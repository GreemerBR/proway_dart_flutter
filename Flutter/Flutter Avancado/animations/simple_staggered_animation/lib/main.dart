// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Staggered Animation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const StaggerDemo(),
    );
  }
}

class StaggerDemo extends StatefulWidget {
  const StaggerDemo({Key? key}) : super(key: key);

  @override
  State<StaggerDemo> createState() => _StaggerDemoState();
}

typedef StateMixin = TickerProviderStateMixin<StaggerDemo>;

class _StaggerDemoState extends State<StaggerDemo> with StateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  Future<void> playAnimation() async {
    try {
      while (true) {
        await animationController.forward().orCancel;
        await animationController.reverse().orCancel;
      }
    } on TickerCanceled {
      print('O ticker já foi cancelado');
    }
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 0.5;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Animation'),
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () {
          playAnimation();
        },
        child: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.pink.shade100,
              border: Border.all(color: Colors.pink),
            ),
            child: StaggeredAnimation(
              animationMain: animationController.view,
            ),
          ),
        ),
      ),
    );
  }
}

class StaggeredAnimation extends StatelessWidget {
  final Animation<double> animationMain;
  final Animation<double> animationOpacity;
  final Animation<double> animationWidth;
  final Animation<double> animationHeight;
  final Animation<EdgeInsets> animationPadding;
  final Animation<BorderRadius?> animationBorderRadius;
  final Animation<Color?> animationColor;

  StaggeredAnimation({super.key, required this.animationMain})
      : animationOpacity = Tween<double>(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: animationMain,
            curve: const Interval(
              0.0,
              0.1,
              curve: Curves.ease,
            ),
          ),
        ),
        animationWidth = Tween<double>(
          begin: 50.0,
          end: 150.0,
        ).animate(
          CurvedAnimation(
            parent: animationMain,
            curve: const Interval(
              0.125,
              0.25,
              curve: Curves.ease,
            ),
          ),
        ),
        animationHeight = Tween<double>(
          begin: 50.0,
          end: 150.0,
        ).animate(
          CurvedAnimation(
            parent: animationMain,
            curve: const Interval(
              0.25,
              0.375,
              curve: Curves.ease,
            ),
          ),
        ),
        animationPadding = EdgeInsetsTween(
          begin: const EdgeInsets.only(bottom: 16),
          end: const EdgeInsets.only(
            bottom: 75,
          ),
        ).animate(
          CurvedAnimation(
            parent: animationMain,
            curve: const Interval(
              0.25,
              0.375,
              curve: Curves.ease,
            ),
          ),
        ),
        animationBorderRadius = BorderRadiusTween(
          begin: BorderRadius.circular(4.0),
          end: BorderRadius.circular(75.0),
        ).animate(
          CurvedAnimation(
            parent: animationMain,
            curve: const Interval(
              0.375,
              0.5,
              curve: Curves.ease,
            ),
          ),
        ),
        animationColor = ColorTween(
          begin: Colors.indigo[100],
          end: Colors.orange[400],
        ).animate(
          CurvedAnimation(
            parent: animationMain,
            curve: const Interval(
              0.5,
              0.75,
              curve: Curves.ease,
            ),
          ),
        );

  Widget buildAnimation(BuildContext context, Widget? child) {
    return Container(
      padding: animationPadding.value,
      alignment: Alignment.bottomCenter,
      child: Opacity(
        opacity: animationOpacity.value,
        child: Container(
          width: animationWidth.value,
          height: animationHeight.value,
          decoration: BoxDecoration(
            color: animationColor.value,
            border: Border.all(color: Colors.indigo.shade300, width: 3.0),
            borderRadius: animationBorderRadius.value,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationMain,
      builder: buildAnimation,
    );
  }
}
