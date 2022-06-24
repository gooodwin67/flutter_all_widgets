import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetFittedBox extends StatelessWidget {
  const WidgetFittedBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FittedBox'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 212, 212, 212),
              child: FittedBox(
                fit: BoxFit.cover, /////////////////////////////////////////
                child: Icon(
                  Icons.flutter_dash_rounded,
                  size: 80,
                  color: Colors.red,
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
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 255, 224, 224),
              child: FittedBox(
                fit: BoxFit.contain, /////////////////////////////////////////
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
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 226, 255, 224),
              child: FittedBox(
                fit: BoxFit.fill, /////////////////////////////////////////
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
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 224, 230, 255),
              child: FittedBox(
                fit: BoxFit.scaleDown, /////////////////////////////////////////
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
