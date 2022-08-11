import 'package:flutter/material.dart';
import 'package:simple_hero_radial_animation/presenter/home/widgets/build_circle_hero.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      alignment: FractionalOffset.bottomLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          const Text(
            '''Escolha sua escola
e aguarde sua carta''',
            style: TextStyle(
              fontSize: 60,
              fontFamily: 'HarryP',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              BuildCircleHero(
                  imageName: 'assets/images/beauxbatons.png',
                  description: 'Beauxbatons'),
              BuildCircleHero(
                  imageName: 'assets/images/castelo_bruxo.png',
                  description: 'Castelo Bruxo'),
              BuildCircleHero(
                  imageName: 'assets/images/hogwarts.png',
                  description: 'Hogwarts')
            ],
          ),
        ],
      ),
    );
  }
}
