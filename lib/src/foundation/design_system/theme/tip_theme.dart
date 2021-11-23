import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tip/src/features/expanses/ui/home_riverpod.dart';
import 'package:tip/src/foundation/design_system/theme/extensions.dart';
import 'package:tip/src/foundation/design_system/theme/styled_content.dart';

class TipTheme extends StatelessWidget {
  final Widget child;

  const TipTheme({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: light(),
      darkTheme: dark(),
      home: Consumer(
        builder: (
          BuildContext innerContext,
          WidgetRef ref,
          Widget? child,
        ) {
          final scheme = Theme.of(innerContext).colorScheme;
          return StyledContent(
            style: DefaultTextStyle.of(innerContext).style,
            color: scheme.onColorFor(scheme.surface),
            opacity: 1.0,
            child: const HomePage(),
          );
        },
      ),
    );
  }
}

ThemeData light() => ThemeData.light();

ThemeData dark() => ThemeData.dark();
