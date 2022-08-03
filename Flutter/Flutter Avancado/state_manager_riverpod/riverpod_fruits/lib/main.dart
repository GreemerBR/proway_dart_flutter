import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main(List<String> args) {
  runApp(
    ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.pink),
        home: const HomePage(),
      ),
    ),
  );
}

final favoriteFruitProvider = ChangeNotifierProvider((ref) => Favorites());

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

class FruitButton extends HookConsumerWidget {
  final String fruit;
  const FruitButton(this.fruit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.watch(favoriteFruitProvider).changeFruit(fruit);
      },
      child: Text(fruit),
    );
  }
}

class Favorites extends ChangeNotifier {
  String fruit = 'unknown';

  void changeFruit(String newFruit) {
    fruit = newFruit;
    notifyListeners();
  }
}
