import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TabBarWithGridView extends StatelessWidget {
  final List<String> tabTitles = ['Tab 1', 'Tab 2', 'Tab 3'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabTitles.length,
      child: Scaffold(
        body: TabBarView(
          children: [
            buildGridView(),
            buildGridView(),
            buildGridView(),
          ],
        ),
      ),
    );
  }

  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        for (int i = 1; i <= 20; i++)
          Container(
            color: Colors.grey[300],
            child: Center(
              child: Text(
                'Item $i',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
      ],
    );
  }
}
