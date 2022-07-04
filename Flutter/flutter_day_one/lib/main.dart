import 'package:flutter/material.dart';

void main() {
  runApp( // Método que vai inflar nosso app (executar)
    MaterialApp( // um Widget que já vem com bastante coisas de configurações pronta
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold( // Esqueleto do app, sempre intessante ter 1 em cada page
      appBar: AppBar(),
      body: const Center(
        child: Text('Olá mundo'),
      ),
    );
  }
}