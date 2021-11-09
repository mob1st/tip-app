import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmptyTransactionCard extends StatelessWidget {
  const EmptyTransactionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Sem coisas ali meu rei'),
        TextButton(
          onPressed: () {},
          child: const Text('Adicionar'),
        ),
      ],
    );
  }
}
