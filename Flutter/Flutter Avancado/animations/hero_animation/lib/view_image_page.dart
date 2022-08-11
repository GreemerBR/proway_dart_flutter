import 'package:flutter/material.dart';

import 'home_page.dart';

class ViewImagePage extends StatelessWidget {
  const ViewImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation 2'),
      ),
      body: InkWell(
        onTap: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const HomePage(),
            ),
          );
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Hero(
            tag: 'Slytherin',
            child: Image.network(
              'https://static.wikia.nocookie.net/harrypotter/images/0/00/Slytherin_ClearBG.png/revision/latest?cb=20200605032916&path-prefix=pt-br',
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}
