import 'package:flutter/material.dart';

class WidgetEtc extends StatelessWidget {
  const WidgetEtc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('TITLE'),
      ),
      body: Center(
        child: Text('asd'),
      ),
    );
  }
}
