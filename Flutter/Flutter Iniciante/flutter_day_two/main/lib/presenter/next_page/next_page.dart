import 'package:flutter/material.dart';
import 'package:main/core/app_assets.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
            bottom: Radius.circular(30),
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.keyboard_backspace_sharp),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.green.shade200,
        elevation: 10,
      ),
      body: Column(
        children: [
          Image.asset(imgAirSuport),
          const Text(
            'Testando um texto',
            style: TextStyle(
              fontSize: 56,
              fontFamily: 'HarryP',
            ),
          ),
        ],
      ),
    );
  }
}

// stl = Criar uma estrutura inicial de um Widget Stateless
