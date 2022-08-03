import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  static const route = '/page-five';

  @override
  Widget build(BuildContext context) {
    final information = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text(information['name'].toString()),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Text(
            'Bem vindo a página 5, você ${information["mensagem"].toString()}',
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
