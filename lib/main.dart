import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/main_screen.dart';
import 'package:flutter_all_widgets/menu/menu_text/components/widget_default_text/widget_default_text.dart';
import 'package:flutter_all_widgets/menu/menu_text/components/widget_rich_text/widget_rich_text.dart';
import 'package:flutter_all_widgets/menu/menu_text/components/widget_text/widget_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Flutter All Widgets'),
        ),
        body: MainScreen(),
      ),
    );
  }
}
