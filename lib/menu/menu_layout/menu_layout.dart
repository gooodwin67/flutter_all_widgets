import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/menu/menu_layout/components/widget_align/widget_align.dart';
import 'package:flutter_all_widgets/menu/menu_layout/components/widget_center/widget_center.dart';
import 'package:flutter_all_widgets/menu/menu_layout/components/widget_constrained_box/widget_constrained_box.dart';
import 'package:flutter_all_widgets/menu/menu_layout/components/widget_fitted_box/widget_fitted_box.dart';
import 'package:flutter_all_widgets/menu/menu_text/components/widget_default_text/widget_default_text.dart';
import 'package:flutter_all_widgets/menu/menu_text/components/widget_rich_text/widget_rich_text.dart';
import 'package:flutter_all_widgets/menu/menu_text/components/widget_text/widget_text.dart';

class MenuLayout extends StatelessWidget {
  const MenuLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Text Widgets'),
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
  [const WidgetAlign(), 'Align'],
  [const WidgetCenter(), 'Center'],
  [const WidgetFittedBox(), 'FittedBox'],
  [const WidgetConstrainedBox(), 'ConstrainedBox'],
];
