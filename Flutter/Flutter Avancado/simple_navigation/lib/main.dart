import 'package:flutter/material.dart';

import 'core/app_routes.dart';
import 'page_five.dart';
import 'page_four.dart';
import 'page_six.dart';
import 'page_three.dart';
import 'page_two.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      routes: appRoutes,
      onUnknownRoute: onUnknownRoute,
    ),
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static const route = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FractionallySizedBox(
              widthFactor: 0.6,
              child: ElevatedButton(
                onPressed: () {
                  // Navegação não nomeada com volta
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const PageTwo()),
                  );
                },
                child: const Text(
                  'Página 2',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: ElevatedButton(
                onPressed: () {
                  // Navegação não nomeada sem volta
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const PageThree()),
                  );
                },
                child: const Text(
                  'Página 3',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: ElevatedButton(
                onPressed: () {
                  // Navegação nomeada
                  Navigator.of(context).pushNamed(PageFour.route);
                },
                child: const Text(
                  'Página 4',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: ElevatedButton(
                onPressed: () {
                  // Navegação nomeada passando valor
                  Navigator.of(context).pushNamed(
                    PageFive.route,
                    arguments: {
                      'name': 'Gregory Viegas Zimmer',
                      'mensagem': 'está vindo da página inicial'
                    },
                  );
                },
                child: const Text(
                  'Página 5',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: ElevatedButton(
                onPressed: () {
                  // Navegação nomeada passando valor
                  Navigator.of(context).pushNamed(
                    PageSix.route,
                    arguments: {
                      'name': 'Henrique da Silva Cardoso',
                      'mensagem': 'está vindo da página inicial'
                    },
                  );
                },
                child: const Text(
                  'Página 6',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            FractionallySizedBox(
              widthFactor: 0.6,
              child: ElevatedButton(
                onPressed: () {
                  // Testando página erro
                  Navigator.of(context).pushNamed(
                    'aspoaksokas',
                  );
                },
                child: const Text(
                  'Página erro',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
