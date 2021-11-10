import 'package:flutter/material.dart';
import 'package:tip/src/foundation/design_system/theme/extensions.dart';
import 'package:tip/src/foundation/design_system/theme/styled_content.dart';

class TipTheme extends StatelessWidget {
  final Widget child;

  const TipTheme({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: light(),
      darkTheme: dark(),
      home: Builder(builder: (innerContext) {
        final scheme = Theme.of(innerContext).colorScheme;
        return StyledContent(
          style: DefaultTextStyle.of(innerContext).style,
          color: scheme.onColorFor(scheme.surface),
          opacity: 1.0,
          child: child,
        );
      }),
    );
  }
}

ThemeData light() => ThemeData.light();

ThemeData dark() => ThemeData.dark();
