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

final fruitProvider = StateProvider<String>((ref) => 'unknown');

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fruit = ref.watch(fruitProvider.state);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Minha fruta favorita é ${fruit.state}'),
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
        ref.watch(fruitProvider.state).state = fruit;
      },
      child: Text(fruit),
    );
  }
}
