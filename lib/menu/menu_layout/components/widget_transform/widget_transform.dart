import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetTransform extends StatelessWidget {
  const WidgetTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Align'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Transform.scale(
                //////////////////////////////////////////
                scale: 1.4,
                child: FlutterIcon(),
              ),
              const SizedBox(height: 30),
              Transform.rotate(
                //////////////////////////////////////////
                angle: pi,
                child: FlutterIcon(),
              ),
              const SizedBox(height: 30),
              Transform.translate(
                //////////////////////////////////////////
                offset: Offset(-70, -10),
                child: FlutterIcon(),
              ),
              const SizedBox(height: 30),
              Transform(
                transform: Matrix4.skewX(
                    0.4), //////////////////////////////////////////
                child: FlutterIcon(),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ));
  }
}

class FlutterIcon extends StatelessWidget {
  const FlutterIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.flutter_dash_rounded,
      size: 80,
      color: Colors.red,
      shadows: [
        Shadow(
          blurRadius: 3,
          color: Colors.black.withOpacity(0.5),
          offset: Offset(-2, -2),
        )
      ],
    );
  }
}
