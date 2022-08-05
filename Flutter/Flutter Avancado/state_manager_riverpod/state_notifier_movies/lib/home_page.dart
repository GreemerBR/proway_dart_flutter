import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier_movies/second_page.dart';

final nameUser = Provider((ref) => 'Gregory Viegas Zimmer');
final counterProvider = StateProvider((ref) => 0);
final counterUpProvider =
    StateNotifierProvider<CounterNotifier, int>((ref) => CounterNotifier());

class HomePage extends HookConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameUserWatch = ref.watch(nameUser);
    final counter = ref.watch(counterProvider.state);
    final counterUp = ref.watch(counterUpProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('State Notifier - Riverpod'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nameUserWatch,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              counter.state.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              counterUp.toString(),
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ),
                );
              },
              child: const Text('Próxima página'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.state++;
          ref.read(counterUpProvider.notifier).increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() => state++;
}
