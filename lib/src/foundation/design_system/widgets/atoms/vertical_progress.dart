import 'package:flutter/material.dart';

class VerticalProgress extends StatelessWidget {
  final Color color;
  final double value;

  const VerticalProgress({
    Key? key,
    required this.color,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      color: color,
    );
  }
}
