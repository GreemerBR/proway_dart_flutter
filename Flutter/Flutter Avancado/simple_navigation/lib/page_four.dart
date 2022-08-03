import 'package:flutter/material.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  static const route = '/page-four';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Bem vindo a página 4',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
