import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Widget "Text"'),
      ),
      body: Column(
        children: const [
          SizedBox(height: 50),
          Text(
            'Смоленск - Город на западе России, административный, промышленный и культурный центр Смоленской области. Один из древнейших городов России. Носит почётное звание «Город-герой». Награждён орденом Ленина и орденом Отечественной войны I степени, медалью «Золотая Звезда».',
            maxLines: 3,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.yellow, //Цвет текста
              backgroundColor: Colors.blue, //Фон текста
              fontSize: 17, //Размер шрифта
              fontWeight: FontWeight.bold, //толщина
              fontStyle: FontStyle.italic, //Стиль (наклонный)
              letterSpacing: 3, //Межбуквенное расстояние
              wordSpacing: 2, //Расстояние между слов
              textBaseline: TextBaseline.alphabetic, //Базовая линия
              height: 1.2, //Высота
              leadingDistribution: TextLeadingDistribution.even, //Интерлиньяж
              decoration:
                  TextDecoration.underline, //Подчеркнутый, зачеркнутый итд
              decorationColor: Colors.red, //Цвет подчеркивания
              decorationStyle: TextDecorationStyle.dotted, //Стиль подчеркивания
              decorationThickness: 3, //Толщина подчеркивания
              fontFamily: 'Lora', //Шрифт (подключается в pubspec.yaml)
              overflow: TextOverflow.ellipsis, //Если текст не помещается
              shadows: [
                Shadow(
                  color: Colors.black,
                  offset: Offset(2, 2),
                  blurRadius: 4,
                )
              ], ////////////////////////////Тень
            ),
          ),
        ],
      ),
    );
  }
}
