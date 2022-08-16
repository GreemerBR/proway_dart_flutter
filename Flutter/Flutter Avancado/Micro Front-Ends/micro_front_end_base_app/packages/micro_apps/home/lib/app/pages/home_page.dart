import 'package:core/core.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ButtonDefaultWidget(
          onPressed: () {
            navigatorKey.currentState?.pushNamed('/product');
          },
          title: 'Ir para product',
        ),
      ),
    );
  }
}
