import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home_controller.dart';
import 'widgets/fruit_button.dart';

final favoriteFruitProvider =
    ChangeNotifierProvider((ref) => FavoritesController());

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorite = ref.watch(favoriteFruitProvider);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Minha fruta favorita é ${favorite.fruit}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            FruitButton('Abacaxi'),
            FruitButton('Amora'),
            FruitButton('Banana'),
            FruitButton('Laranja'),
            FruitButton('Limão'),
            FruitButton('Maçã'),
            FruitButton('Maracuja'),
            FruitButton('Melancia'),
            FruitButton('Morango'),
            FruitButton('Uva'),
          ],
        ),
      ),
    );
  }
}
