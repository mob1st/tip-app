import 'package:flutter/material.dart';

class DefaultContentOpacity extends InheritedTheme {
  final double opacity;

  const DefaultContentOpacity({
    Key? key,
    required this.opacity,
    required Widget child,
  }) : super(key: key, child: child);

  static double of(BuildContext context) {
    final contentOpacity =
        context.dependOnInheritedWidgetOfExactType<DefaultContentOpacity>();
    return contentOpacity?.opacity ?? 1.0;
  }

  @override
  bool updateShouldNotify(covariant DefaultContentOpacity oldWidget) {
    return oldWidget.opacity != opacity;
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return DefaultContentOpacity(
      opacity: opacity,
      child: child,
    );
  }
}
