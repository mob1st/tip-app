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

  static DefaultContentColor of(BuildContext context) {
    final contentOpacity =
        context.dependOnInheritedWidgetOfExactType<DefaultContentColor>();
    assert(contentOpacity != null, 'No LocalContentColor found in context');
    return contentOpacity!;
  }

  @override
  bool updateShouldNotify(covariant DefaultContentColor oldWidget) {
    return oldWidget.color != color;
  }

  @override
  Widget wrap(BuildContext context, Widget child) {
    return DefaultContentColor(color: color, child: child);
  }

  @override
  List<DiagnosticsNode> debugDescribeChildren() {
    // TODO: implement debugDescribeChildren
    return super.debugDescribeChildren();
  }
}
