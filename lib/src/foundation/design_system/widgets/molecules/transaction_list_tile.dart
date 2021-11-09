import 'package:flutter/material.dart';
import 'package:tip/src/foundation/design_system/theme/styled_content.dart';
import 'package:tip/src/foundation/design_system/widgets/atoms/vertical_progress.dart';

class TransactionListTile extends StatelessWidget {
  final VerticalProgress progress;
  final Text title;
  final Text? subtitle;
  final Text detail;

  const TransactionListTile({
    Key? key,
    required this.progress,
    required this.title,
    this.subtitle,
    required this.detail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styledSubtitle;
    if (subtitle != null) {
      styledSubtitle = StyledContent(
        child: subtitle!,
        style: Theme.of(context).textTheme.bodyText2,
      );
    } else {
      styledSubtitle = null;
    }
    return GestureDetector(
      onTap: () {},
      child: ListTile(
        title: title,
        subtitle: styledSubtitle,
        leading: progress,
        trailing: const Icon(Icons.ac_unit_sharp),
      ),
    );
  }
}
