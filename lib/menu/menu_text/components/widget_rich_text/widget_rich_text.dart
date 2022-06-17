import 'package:flutter/material.dart';

class WidgetRichText extends StatelessWidget {
  const WidgetRichText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Widget "RichText"'),
      ),
      body: Column(
        children: [
          SizedBox(height: 50),
          RichText(
            //Разные стили в одной "строке"
            text: const TextSpan(
              text: 'Смоленск, ',
              children: [
                TextSpan(text: 'Вязьма, ', style: TextStyle(color: Colors.red)),
                TextSpan(text: 'Ярцево'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
