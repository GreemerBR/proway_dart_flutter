import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  static const route = '/page-two';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text(
          'Bem vindo a página 2',
          style: TextStyle(
            fontSize: 25,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
