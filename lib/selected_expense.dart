import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SelectedExpense extends StatelessWidget {
  const SelectedExpense({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(value: false, onChanged: (checked) {}),
      title: const Text('Título'),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text('Subtitle'),
          TextField(
            maxLines: 1,
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            decoration: InputDecoration(
              hintText: 'Hint',
              label: Text('label'),
            ),
          ),
        ],
      ),
      isThreeLine: false,
    );
  }
}
