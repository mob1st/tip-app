import 'package:flutter/material.dart';

class DefaultContentColor extends InheritedTheme {
  final Color color;

  const DefaultContentColor({
    Key? key,
    required this.color,
    required Widget child,
  }) : super(
          key: key,
          child: child,
        );

  static Color of(BuildContext context) {
    final contentOpacity =
        context.dependOnInheritedWidgetOfExactType<DefaultContentColor>();
    return contentOpacity?.color ?? Theme.of(context).colorScheme.onSurface;
  }

  @override
  bool updateShouldNotify(covariant DefaultContentColor oldWidget) {
    return oldWidget.color != color;
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return DefaultContentColor(color: color, child: child);
  }
}
