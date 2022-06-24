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
          Center(
            child: RichText(
              //Разные стили в одной "строке"
              text: const TextSpan(
                style: TextStyle(color: Colors.green),
                text: 'Смоленск, ',
                children: [
                  TextSpan(
                      text: 'Вязьма, ', style: TextStyle(color: Colors.red)),
                  TextSpan(text: 'Ярцево'),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return FullImage();
                  },
                ),
              );
            },
            child: Text('Code'),
          ),
        ],
      ),
    );
  }
}

class FullImage extends StatelessWidget {
  const FullImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Image.asset('assets/images/richtext.jpg'),
      ),
    );
  }
}
