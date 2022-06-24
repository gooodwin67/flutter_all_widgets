import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/menu/menu_test/components/widget_move/widget_move.dart';

class MenuTest extends StatelessWidget {
  const MenuTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Test Widgets'),
      ),
      body: ListView.builder(
        itemCount: widgets.length,
        itemBuilder: (context, int index) {
          return ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => widgets[index][0]),
                ),
              );
            },
            child: Text(widgets[index][1]),
          );
        },
      ),
    );
  }
}

List widgets = [
  [const WidgetMove(), 'Move'],
];
