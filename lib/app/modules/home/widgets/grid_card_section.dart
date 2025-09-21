import 'package:last02/app/core/utils/math_utils.dart';
import 'package:flutter/widgets.dart';

class GridCardSection extends StatelessWidget {
  final List<Widget> cards;

  const GridCardSection({required this.cards});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: getVerticalSize(12),
      crossAxisSpacing: getVerticalSize(12),
      childAspectRatio: getHorizontalSize(110) / getVerticalSize(100), //1.5,
      children: cards,
    );
  }
}

class HorizontalGridCardSection extends StatelessWidget {
  final List<Widget> cards;

  const HorizontalGridCardSection({super.key, required this.cards});

  @override
  Widget build(BuildContext context) {
    final cardWidth = getHorizontalSize(190);
    final int halfLength = (cards.length / 2).ceil();
    return SizedBox(
      height: getVerticalSize(350),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: halfLength,
        itemBuilder: (context, index) {
          final int first = index;
          final int second = index + halfLength;

          return Container(
            width: cardWidth,
            margin: EdgeInsets.only(right: getHorizontalSize(12)),
            child: Column(
              children: [
                Expanded(child: cards[first]),
                const SizedBox(height: 12),
                if (second < cards.length)
                  Expanded(child: cards[second])
                else
                  const Spacer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
