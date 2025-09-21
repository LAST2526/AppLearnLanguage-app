import 'package:last02/app/core/utils/math_utils.dart';
import 'package:flutter/material.dart';

class TopicItem extends StatelessWidget {
  final String title;
  final Color color;
  final bool locked;
  final int? learned;
  final int? total;
  final Function()? onTap;

  const TopicItem({
    required this.title,
    required this.color,
    this.locked = false,
    this.learned,
    this.total,
    this.onTap,
    super.key,
  });

  bool get showProgress => learned != null && total != null;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {}, // Nếu không có onTap, không làm gì khi bấm
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            foregroundDecoration: locked
                ? BoxDecoration(
                    color: Colors.black.withOpacity(0.35),
                    borderRadius: BorderRadius.circular(12),
                  )
                : null,
            padding: const EdgeInsets.all(12),
            child: Stack(
              children: [
                Center(
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      title,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: getFontSize(22),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Text(
                    "${learned ?? 0} / ${total ?? 0}",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: getFontSize(18),
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (locked)
            Positioned(
              top: 8,
              right: 8,
              child: Icon(
                Icons.lock,
                color: Colors.white,
                size: getSize(32),
              ),
            ),
        ],
      ),
    );
  }
}
