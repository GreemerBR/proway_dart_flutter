import 'package:core/core.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Product',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: ButtonDefaultWidget(
          onPressed: () {
            navigatorKey.currentState?.pushNamed('/login');
          },
          title: 'Ir para login',
        ),
      ),
    );
  }
}
