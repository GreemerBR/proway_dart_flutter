import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  static const route = '/page-three';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Bem vindo a página 3',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
