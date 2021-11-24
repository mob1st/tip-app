import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tip/src/features/expanses/ui/home_riverpod.dart';
import 'package:tip/src/foundation/design_system/theme/tip_theme.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(
    child: TipTheme(
      child: HomePage(),
    ),
  ));
}
