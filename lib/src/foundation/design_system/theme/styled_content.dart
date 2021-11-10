import 'package:flutter/material.dart';
import 'package:tip/src/foundation/design_system/theme/default_content_alpha.dart';
import 'package:tip/src/foundation/design_system/theme/default_content_color.dart';

class StyledContent extends StatelessWidget {
  final Widget child;
  final TextStyle? style;
  final Color? color;
  final double? opacity;

  const StyledContent({
    Key? key,
    this.style,
    this.color,
    this.opacity,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usedColor = color ?? DefaultContentColor.of(context).color;
    final usedOpacity = opacity ?? DefaultContentOpacity.of(context).opacity;
    final usedStyle = style ?? DefaultTextStyle.of(context).style;
    final opacityColor = usedColor.withOpacity(usedOpacity);
    return DefaultContentColor(
      color: usedColor,
      child: DefaultContentOpacity(
        opacity: usedOpacity,
        child: DefaultTextStyle(
          style: usedStyle.copyWith(
            color: opacityColor,
          ),
          child: IconTheme(
            data: IconTheme.of(context).copyWith(color: opacityColor),
            child: child,
          ),
        ),
      ),
    );
  }
}
