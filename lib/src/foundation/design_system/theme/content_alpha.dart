import 'dart:ui';

import 'package:flutter/material.dart';

class OpacityLevel {
  static const highContrast = OpacityLevel._(
    high: 1.00,
    medium: 0.74,
    disabled: 0.38,
  );

  static const lowContrast = OpacityLevel._(
    high: 0.87,
    medium: 0.60,
    disabled: 0.38,
  );

  final double high;
  final double medium;
  final double disabled;

  const OpacityLevel._({
    required this.high,
    required this.medium,
    required this.disabled,
  });

  factory OpacityLevel.fromColor(
      {required Color color, required bool isLight}) {
    final high = Contrast(
      color: color,
      isLight: isLight,
      highContrast: highContrast.high,
      lowContrast: lowContrast.high,
    ).opacity();
    final medium = Contrast(
      color: color,
      isLight: isLight,
      highContrast: highContrast.medium,
      lowContrast: lowContrast.medium,
    ).opacity();
    final disabled = Contrast(
      color: color,
      isLight: isLight,
      highContrast: highContrast.disabled,
      lowContrast: lowContrast.disabled,
    ).opacity();
    return OpacityLevel._(high: high, medium: medium, disabled: disabled);
  }
}

class Contrast {
  final double highContrast;
  final double lowContrast;
  final Color color;
  final bool isLight;

  const Contrast({
    required this.highContrast,
    required this.lowContrast,
    required this.color,
    required this.isLight,
  });

  double opacity() {
    if (isLight) {
      if (color.computeLuminance() > 0.5) {
        return highContrast;
      } else {
        return lowContrast;
      }
    } else {
      if (color.computeLuminance() < 0.5) {
        return highContrast;
      } else {
        return lowContrast;
      }
    }
  }
}
