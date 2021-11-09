import 'package:flutter/material.dart';

class ChartTemplate extends StatelessWidget {
  const ChartTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          const SliverAppBar(
            title: Text('ss'),
          ),
        ];
      },
      body: Column(),
    );
  }
}
