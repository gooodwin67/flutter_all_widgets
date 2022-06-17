import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/main_screen.dart';

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
        body: const MainScreen(),
      ),
    );
  }
}
