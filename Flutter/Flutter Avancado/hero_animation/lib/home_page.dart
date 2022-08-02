import 'package:flutter/material.dart';
import 'package:hero_animation/view_image_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation 1'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const ViewImagePage(),
              ),
            );
          },
          child: Hero(
            tag: 'Slytherin',
            child: Image.network(
              'https://static.wikia.nocookie.net/harrypotter/images/0/00/Slytherin_ClearBG.png/revision/latest?cb=20200605032916&path-prefix=pt-br',
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
