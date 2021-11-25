import 'package:flutter/material.dart';
import 'package:tip/src/foundation/design_system/theme/colors.dart';
import 'package:tip/src/foundation/design_system/theme/content_alpha.dart';
import 'package:tip/src/foundation/design_system/theme/default_content_alpha.dart';
import 'package:tip/src/foundation/design_system/theme/default_content_color.dart';

extension OnColorFor on ColorScheme {
  Color onColorFor(Color backgroundColor) {
    if (backgroundColor == primary) return onPrimary;
    if (backgroundColor == primaryVariant) return onPrimary;
    if (backgroundColor == secondary) return onSecondary;
    if (backgroundColor == secondaryVariant) return onSecondary;
    if (backgroundColor == background) return onBackground;
    if (backgroundColor == surface) return onSurface;
    if (backgroundColor == error) return onError;
    throw ArgumentError.value(
      backgroundColor,
      "backgroundColor",
      "this function works just with the material colors",
    );
  }
}

extension GetOpacity on BuildContext {
  TextStyle defaultStyle({
    double? opacity,
  }) {
    final color = DefaultContentColor.of(this);
    final usedOpacity = opacity ?? DefaultContentOpacity.of(this);
    return DefaultTextStyle.of(this)
        .style
        .copyWith(color: color.withOpacity(usedOpacity));
  }

  OpacityLevel get opacityLevel {
    final color = DefaultContentColor.of(this);
    final isLight = MediaQuery.of(this).platformBrightness.isLight;
    return OpacityLevel.fromColor(color: color, isLight: isLight);
  }
}

extension Is on Brightness {
  bool get isLight => this == Brightness.light;
  bool get isDark => this == Brightness.dark;
}

extension ThemeColors on ThemeData {
  ThemeData theme() => _colors()._typographies()._shapes();

  ThemeData _colors() {
    if (colorScheme.brightness.isLight) {
      return _lightColors();
    } else {
      return _darkColors();
    }
  }

  ThemeData _lightColors() => copyWith(
        colorScheme: ColorScheme.light(
          primary: pink.shade500,
        ),
      );

  ThemeData _darkColors() => copyWith(
        colorScheme: ColorScheme.dark(
          primary: pink.shade100,
        ),
      );

  ThemeData _typographies() => copyWith();

  ThemeData _shapes() => copyWith();
}
