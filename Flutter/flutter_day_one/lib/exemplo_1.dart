import 'package:flutter/material.dart';

void main() {
  runApp(
    // Método que vai inflar nosso app (executar)
    MaterialApp(
      // um Widget que já vem com bastante coisas de configurações pronta
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  // Classe StatefulWidget (com estado),
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    // Método que irpa "buildar" toda nossa view
    // passado o context (ajuda a identificar nossa árvore) e retornando um Widget
    return Scaffold(
      // Esqueleto do app, sempre intessante ter 1 em cada page
      appBar: AppBar(), // Widget do próprio Flutter para AppBar
      body: Center(
        // Widget para centralizar dentro do espaco disponível
        // child: Text('Olá mundo'), // Widget para mostrar um texto na tela
        child: Column(
          children: [
            const Text(
              'Olá',
              style: TextStyle(
                color: Color.fromARGB(255, 48, 187, 52),
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Clica ali embaixo vai...',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Image.network(
              'https://cdn.pixabay.com/photo/2020/06/09/19/18/harry-potter-5279717_960_720.jpg',
              scale: 1.5,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              onPressed: () {},
              child: const Text(
                'Clica vai',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//Image.network('https://cdn.pixabay.com/photo/2012/06/19/10/32/owl-50267_960_720.jpg');
