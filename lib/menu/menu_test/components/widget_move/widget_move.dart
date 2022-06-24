import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidgetMove extends StatefulWidget {
  const WidgetMove({Key? key}) : super(key: key);

  @override
  State<WidgetMove> createState() => _WidgetMoveState();
}

class _WidgetMoveState extends State<WidgetMove> {
  int startGame = 0;
  double moveEnemyY = -50;
  double widthEnemy = 30;
  double enemyX = 0;
  int moveEnemyDown = 1;
  double heightEnemy = 30;
  double widthPlayer = 80;
  double moveX = 0;
  int right = 0;
  int left = 0;
  Duration delay = const Duration(milliseconds: 1);

  void startNewGame(arrow, position) {
    setState(() {
      if (arrow == 'down') {
        moveEnemyY += 2;
      } else {
        moveEnemyY -= 2;
      }
    });
  }

  void stopNewGame() {}

  void moveRight() {
    setState(() {
      moveX += 1;
    });
  }

  void moveLeft() {
    setState(() {
      moveX -= 1;
    });
  }

  void notRun() {
    right = 0;
    left = 0;
  }

  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double bottomEnemy = size.height + 50;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Widget "DefaultTextStyle"'),
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              color: Colors.red,
              child: Transform.translate(
                offset: Offset(moveX, 0),
                child: Icon(
                  Icons.flutter_dash_rounded,
                  size: widthPlayer,
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
            Container(
              alignment: Alignment.topLeft,
              child: Transform.translate(
                offset: Offset(enemyX, moveEnemyY),
                child: Container(
                  width: widthEnemy,
                  height: heightEnemy,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTapDown: (detail) {
                      setState(() {
                        left = 1;
                        Timer.periodic(delay, (timer) {
                          if (left == 1 && moveX >= 0) {
                            moveLeft();
                          } else {
                            timer.cancel();
                          }
                        });
                      });
                    },
                    onTapUp: (detail) {
                      setState(() {
                        notRun();
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      color: Colors.blue,
                      child: Text('Left'),
                    ),
                  ),
                  SizedBox(width: 10),
                  GestureDetector(
                    onTapDown: (detail) {
                      setState(() {
                        right = 1;
                        Timer.periodic(delay, (timer) {
                          if (right == 1 && moveX <= size.width - widthPlayer) {
                            moveRight();
                          } else {
                            timer.cancel();
                          }
                        });
                      });
                    },
                    onTapUp: (detail) {
                      setState(() {
                        notRun();
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      color: Colors.blue,
                      child: Text('Right'),
                    ),
                  ),
                  SizedBox(width: 100),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        startGame = 1;
                        Timer.periodic(delay, (timer) {
                          if (moveEnemyY == -50) {
                            moveEnemyDown = 1;
                            enemyX =
                                Random().nextDouble() * size.width - widthEnemy;
                          } else if (moveEnemyY >=
                              size.height - heightEnemy - 30) {
                            moveEnemyDown = 0;
                            enemyX =
                                Random().nextDouble() * size.width - widthEnemy;
                          }
                          if (moveEnemyDown == 1) {
                            startNewGame('down', 0);
                          } else {
                            startNewGame('up', 0);
                          }
                        });
                      });
                    },
                    onTapUp: (detail) {
                      setState(() {
                        stopNewGame();
                      });
                    },
                    child: Text('START GAME'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
