import 'package:flutter/material.dart';

class DefaultContentOpacity extends InheritedTheme {
  final double opacity;

  const DefaultContentOpacity({
    Key? key,
    required this.opacity,
    required Widget child,
  }) : super(key: key, child: child);

  static DefaultContentOpacity of(BuildContext context) {
    final contentOpacity =
        context.dependOnInheritedWidgetOfExactType<DefaultContentOpacity>();
    assert(contentOpacity != null, 'No LocalContentOpacity found in context');
    return contentOpacity!;
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
