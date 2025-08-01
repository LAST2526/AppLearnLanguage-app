import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  final Future<void> Function() onPressed;
  final IconData? icon;
  final String label;
  final ButtonStyle? style;

  const BtnWidget({
    super.key,
    required this.onPressed,
    this.icon,
    required this.label,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return icon != null
        ? ElevatedButton.icon(
            onPressed: () async {
              await onPressed();
            },
            icon: Icon(icon),
            label: Text(label),
            style: style,
          )
        : ElevatedButton(
            onPressed: () async {
              await onPressed();
            },
            child: Text(label),
            style: style,
          );
  }
}
