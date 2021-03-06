import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/menu/menu_text/components/widget_default_text/widget_default_text.dart';
import 'package:flutter_all_widgets/menu/menu_text/components/widget_rich_text/widget_rich_text.dart';
import 'package:flutter_all_widgets/menu/menu_text/components/widget_text/widget_text.dart';

class MenuText extends StatelessWidget {
  const MenuText({Key? key}) : super(key: key);

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
  [const WidgetText(), 'Text'],
  [const WidgetDefaultTextStyle(), 'DefaultTextStyle'],
  [const WidgetRichText(), 'RichText']
];
