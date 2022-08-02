import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isClicked = false;
  double _height = 0;
  double _widht = 0;
  double _angulo = 0;
  int _r = 255;
  int _g = 255;
  int _b = 255;

  void changeClicked() {
    isClicked = !isClicked;
    setState(() {
      Random random = Random();
      _height = (random.nextInt(550)).toDouble();
      _widht = (random.nextInt(400)).toDouble();
      _angulo = (random.nextInt(180)).toDouble();
      _r = random.nextInt(256);
      _g = random.nextInt(256);
      _b = random.nextInt(256);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            AnimatedScale(
              scale: isClicked ? 2.5 : 0.5,
              duration: const Duration(seconds: 2),
              onEnd: () {
                changeClicked();
              },
            ),
            AnimatedContainer(
              onEnd: () {
                changeClicked();
              },
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.circular(isClicked ? _angulo : _angulo),
                color: isClicked
                    ? Color.fromARGB(255, _r, _g, _b)
                    : Color.fromARGB(255, _r, _g, _b),
              ),
              curve: Curves.bounceOut,
              // transform: Matrix4.rotationY(isClicked ? _angulo : _angulo)
              //   ..rotateX(isClicked ? _angulo : _angulo)
              //   ..rotateZ(isClicked ? _angulo : _angulo),
              duration: const Duration(milliseconds: 500),
              height: isClicked ? _height : _height,
              width: isClicked ? _widht : _widht,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                changeClicked();
              },
              child: const Text('Aumentar / Diminuir'),
            ),
          ],
        ),
      ),
    );
  }
}
