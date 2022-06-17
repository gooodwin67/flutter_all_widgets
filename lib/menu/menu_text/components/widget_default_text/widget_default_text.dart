import 'package:flutter/material.dart';

class WidgetDefaultTextStyle extends StatelessWidget {
  const WidgetDefaultTextStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Widget "DefaultTextStyle"'),
        ),
        body: DefaultTextStyle(
          //Один стиль для всех потомков, если у них нет такого же стиля
          style: TextStyle(color: Colors.red, fontSize: 25),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('Смоленск'),
                Text('Ярцево'),
                Text(
                  'Вязьма',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
        ));
  }
}
