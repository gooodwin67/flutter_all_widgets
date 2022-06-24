import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetCenter extends StatelessWidget {
  const WidgetCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Center'),
      ),
      body: Center(
        child: Icon(
          Icons.flutter_dash_rounded,
          size: 80,
          color: Colors.green,
          shadows: [
            Shadow(
              blurRadius: 7,
              color: Colors.black.withOpacity(0.5),
              offset: Offset(-2, -2),
            )
          ],
        ),
      ),
    );
  }
}
