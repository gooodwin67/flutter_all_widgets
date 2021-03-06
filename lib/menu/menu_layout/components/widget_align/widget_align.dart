import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetAlign extends StatelessWidget {
  const WidgetAlign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Align'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 212, 212, 212),
              child: Align(
                alignment: Alignment.bottomRight, ///////////////////////
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
              child: Align(
                alignment: Alignment(-1, 0.2), ///////////////////////////////
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
