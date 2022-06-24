import 'package:flutter/material.dart';
import 'package:flutter_all_widgets/menu/menu_layout/menu_layout.dart';
import 'package:flutter_all_widgets/menu/menu_test/menu_test.dart';
import 'package:flutter_all_widgets/menu/menu_text/menu_text.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => MenuText())));
        },
        child: Text('TEXT'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => MenuLayout())));
        },
        child: Text('LAYOUT'),
      ),
      ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => MenuTest())));
        },
        child: Text('TEST'),
      ),
    ]);
  }
}
