import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pointers',
      theme: ThemeData(
        colorSchemeSeed: const Color.fromARGB(255, 238, 46, 93),
      ),
      home: const Main(),
    );
  }
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Listener(
              child: Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 238, 46, 93),
              ),
              onPointerDown: (downEvent) {
                print('Down $downEvent');
              },
              onPointerUp: (upEvent) {
                print('Up $upEvent');
              },
              onPointerMove: (moveEvent) {
                print('Move $moveEvent');
              },
            ),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                print('Fui clicado');
              },
              onDoubleTap: () {
                print('Fui duplamente clicado');
              },
              onLongPress: () {
                print('Fui longamente clicaaaaaado');
              },
              onLongPressCancel: () {
                print('Não fui longamente clicaaaaaado');
              },
              child: Container(
                height: 200,
                width: 200,
                color: const Color.fromARGB(255, 238, 46, 93),
              ),
            )
          ],
        ),
      ),
    );
  }
}
