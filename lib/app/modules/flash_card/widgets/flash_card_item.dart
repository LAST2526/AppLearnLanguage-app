import 'dart:math';
import 'package:last02/app/modules/flash_card/controllers/flash_card_controller.dart';
import 'package:flutter/material.dart';

enum FlipDirection {
  VERTICAL,
  HORIZONTAL,
}

enum CardSide {
  FRONT,
  BACK,
}

enum Fill { none, fillFront, fillBack }

class AnimationCard extends StatelessWidget {
  AnimationCard({this.child, this.animation, this.direction});

  final Widget? child;
  final Animation<double>? animation;
  final FlipDirection? direction;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation!,
      builder: (BuildContext context, Widget? child) {
        var transform = Matrix4.identity();
        transform.setEntry(3, 2, 0.001);
        if (direction == FlipDirection.VERTICAL) {
          transform.rotateX(animation!.value);
        } else {
          transform.rotateY(animation!.value);
        }
        return Transform(
          transform: transform,
          alignment: Alignment.center,
          child: child,
        );
      },
      child: child,
    );
  }
}

typedef void BoolCallback(bool isFront);

class FlashCard extends StatefulWidget {
  final Widget front;
  final Widget back;

  /// The amount of milliseconds a turn animation will take.
  final int speed;
  final FlipDirection direction;
  final VoidCallback? onFlip;
  final BoolCallback? onFlipDone;
  final FlashCardController? controller;
  final Fill fill;
  final CardSide side;

  /// If the value is set, the flip effect will work automatically after the specified duration.
  final Duration? autoFlipDuration;

  final bool flipOnTouch;

  final Alignment alignment;

  const FlashCard({
    Key? key,
    required this.front,
    required this.back,
    this.speed = 500,
    this.onFlip,
    this.onFlipDone,
    this.direction = FlipDirection.HORIZONTAL,
    this.controller,
    this.flipOnTouch = true,
    this.alignment = Alignment.center,
    this.fill = Fill.none,
    this.side = CardSide.FRONT,
    this.autoFlipDuration,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return FlashCardState(this.side == CardSide.FRONT);
  }
}

class FlashCardState extends State<FlashCard> with TickerProviderStateMixin {
  AnimationController? controller;
  Animation<double>? _frontRotation;
  Animation<double>? _backRotation;

  AnimationController? _shakeController;
  Animation<double>? _shakeAnimation;

  bool isFront;

  FlashCardState(this.isFront);

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      value: isFront ? 0.0 : 1.0,
      duration: Duration(milliseconds: widget.speed),
      vsync: this,
    );
    _frontRotation = TweenSequence(
      [
        TweenSequenceItem<double>(
          tween: Tween(begin: 0.0, end: pi / 2)
              .chain(CurveTween(curve: Curves.easeIn)),
          weight: 50.0,
        ),
        TweenSequenceItem<double>(
          tween: ConstantTween<double>(pi / 2),
          weight: 50.0,
        ),
      ],
    ).animate(controller!);
    _backRotation = TweenSequence(
      [
        TweenSequenceItem<double>(
          tween: ConstantTween<double>(pi / 2),
          weight: 50.0,
        ),
        TweenSequenceItem<double>(
          tween: Tween(begin: -pi / 2, end: 0.0)
              .chain(CurveTween(curve: Curves.easeOut)),
          weight: 50.0,
        ),
      ],
    ).animate(controller!);
    _shakeController = AnimationController(
      duration: const Duration(milliseconds: 400),
      vsync: this,
    );
    _shakeAnimation = TweenSequence([
      TweenSequenceItem<double>(
        tween: Tween(begin: 0.0, end: 0.1),
        weight: 25.0,
      ),
      TweenSequenceItem<double>(
        tween: Tween(begin: 0.05, end: -0.1),
        weight: 50.0,
      ),
      TweenSequenceItem<double>(
        tween: Tween(begin: -0.1, end: 0.0),
        weight: 25.0,
      ),
    ]).animate(_shakeController!);

    if (widget.autoFlipDuration != null) {
      Future.delayed(widget.autoFlipDuration!, toggleCard);
    }
  }

  @override
  void didUpdateWidget(FlashCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    widget.controller?.state = this;
  }

  /// Flip the card
  /// If awaited, returns after animation completes.
  Future<void> toggleCard() async {
    if (!isFront) {
      if (_shakeController != null) {
        widget.controller?.showGuide();
        await _shakeController!.forward(from: 0.0);
      }
      return;
    }
    ;

    widget.onFlip?.call();

    controller!.duration = Duration(milliseconds: widget.speed);

    final animation = controller!.forward();
    animation.whenComplete(() {
      if (widget.onFlipDone != null) widget.onFlipDone!(isFront);
      if (!mounted) return;
      setState(() => isFront = false);
      widget.controller?.isEnableSwipe.value = isFront;
    });
  }

  @override
  Widget build(BuildContext context) {
    final frontPositioning = widget.fill == Fill.fillFront ? _fill : _noop;
    final backPositioning = widget.fill == Fill.fillBack ? _fill : _noop;

    if (_shakeController == null || _shakeAnimation == null) {
      return GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: toggleCard,
        child: Stack(
          alignment: widget.alignment,
          fit: StackFit.passthrough,
          children: <Widget>[
            frontPositioning(_buildContent(front: true)),
            backPositioning(_buildContent(front: false)),
          ],
        ),
      );
    }

    /// if we need to flip the card on taps, wrap the content
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: toggleCard,
      child: AnimatedBuilder(
        animation: _shakeController!,
        builder: (context, child) {
          final transform = Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateZ(_shakeAnimation!.value);
          return Transform(
            transform: transform,
            alignment: Alignment.center,
            child: child,
          );
        },
        child: Stack(
          alignment: widget.alignment,
          fit: StackFit.passthrough,
          children: <Widget>[
            frontPositioning(_buildContent(front: true)),
            backPositioning(_buildContent(front: false)),
          ],
        ),
      ),
    );
  }

  Widget _buildContent({required bool front}) {
    /// pointer events that would reach the backside of the card should be
    /// ignored
    return IgnorePointer(
      /// absorb the front card when the background is active (!isFront),
      /// absorb the background when the front is active
      ignoring: front ? !isFront : isFront,
      child: AnimationCard(
        animation: front ? _frontRotation : _backRotation,
        child: front ? widget.front : widget.back,
        direction: widget.direction,
      ),
    );
  }

  @override
  void dispose() {
    controller!.dispose();
    _shakeController?.dispose();
    super.dispose();
  }
}

Widget _fill(Widget child) => Positioned.fill(child: child);
Widget _noop(Widget child) => child;
