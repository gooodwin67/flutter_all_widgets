import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetConstrainedBox extends StatelessWidget {
  const WidgetConstrainedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ConstrainedBox'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 212, 212, 212),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: 10), ///////////////////////////////////
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 255, 224, 224),
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                    maxWidth: 100), ////////////////////////////////////
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
            ),
          ),
        ],
      ),
    );
  }
}
