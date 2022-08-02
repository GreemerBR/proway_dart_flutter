import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedPage extends StatefulWidget {
  const AnimatedPage({Key? key}) : super(key: key);

  @override
  State<AnimatedPage> createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  bool isClicked = false;
  int _r = 255;
  int _g = 255;
  int _b = 255;
  double _randomRotation = 0;
  final String img = 'assets/images/rakan_e_xaya.png';

  void dancando() {
    isClicked = !isClicked;
    setState(() {
      Random random = Random();
      _r = random.nextInt(256);
      _g = random.nextInt(256);
      _b = random.nextInt(256);
      _randomRotation = random.nextDouble() * 360;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isClicked
          ? Color.fromARGB(255, _r, _g, _b)
          : Color.fromARGB(255, _r, _g, _b),
      appBar: AppBar(
        title: const Text('Bora girar meu povo....'),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedContainer(
              transform: Matrix4.rotationY(.2)..rotateX(.3),
              duration: const Duration(seconds: 1),
              child: AnimatedRotation(
                turns: _randomRotation,
                duration: const Duration(seconds: 60),
                child: AnimatedScale(
                    scale: isClicked ? 1 : 0.3,
                    duration: const Duration(seconds: 2),
                    onEnd: () {
                      dancando();
                    },
                    child: Image.asset(img)),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                dancando();
              },
              child: const Text('Gira...gira...'),
            )
          ],
        ),
      ),
    );
  }
}
