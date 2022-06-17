import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: ((context) => WidgetText()),
                ),
              );
            },
            child: Text('TEXT'),
          ),
        ],
      ),
    );
  }
}
