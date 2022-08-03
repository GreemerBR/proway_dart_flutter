import 'package:flutter/material.dart';

class PageNotfound extends StatelessWidget {
  const PageNotfound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.dangerous_outlined,
              size: 80,
              color: Colors.red,
            ),
            const SizedBox(height: 20),
            Text(
              'Página não encontrada...',
              style: Theme.of(context).textTheme.headline2,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
