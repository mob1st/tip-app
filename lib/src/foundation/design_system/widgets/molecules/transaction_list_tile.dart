import 'package:flutter/material.dart';
import 'package:tip/src/foundation/design_system/widgets/atoms/vertical_progress.dart';

class TransactionListTile extends StatelessWidget {
  final VerticalProgress progress;
  final Text title;
  final Text? subtitle;
  final Text trailing;
  final GestureTapCallback? onTap;

  const TransactionListTile({
    Key? key,
    required this.progress,
    required this.title,
    this.subtitle,
    required this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [trailing];
    if (onTap != null) {
      children.add(
        const Icon(
          Icons.ice_skating,
        ),
      );
    }
    return ListTile(
      onTap: onTap,
      leading: progress,
      title: title,
      minLeadingWidth: 10,
      subtitle: subtitle,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          trailing,
          if (onTap != null)
            const Icon(
              Icons.ice_skating,
            ),
        ],
      ),
    );
  }
}
