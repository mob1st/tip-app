import 'package:flutter/widgets.dart';

typedef GenericIndexedWidgetBuilder<T extends Widget> = T Function(
  BuildContext context,
  int index,
);

class ListItemBuilder<T extends Widget> {
  final GenericIndexedWidgetBuilder<T> _builder;
  final int count;

  ListItemBuilder({
    required builder,
    required this.count,
  }) : _builder = builder;

  IndexedWidgetBuilder get builder {
    return (context, index) => _builder(context, index);
  }
}
