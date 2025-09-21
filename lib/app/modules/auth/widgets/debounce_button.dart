import 'package:flutter/material.dart';

class DebouncedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Duration duration;

  const DebouncedButton({
    required this.onPressed,
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    super.key,
  });

  @override
  _DebouncedButtonState createState() => _DebouncedButtonState();
}

class _DebouncedButtonState extends State<DebouncedButton> {
  bool _canTap = true;

  void _handleTap() {
    if (!_canTap) return;

    widget.onPressed();
    setState(() => _canTap = false);

    Future.delayed(widget.duration, () {
      if (mounted) {
        setState(() => _canTap = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _canTap ? _handleTap : null,
      child: widget.child,
    );
  }
}
