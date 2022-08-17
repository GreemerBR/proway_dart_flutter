import 'package:about_riverpod/presenter/tasks/tasks_providers.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TasksPage extends HookConsumerWidget {
  const TasksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameUser = ref.watch(nameUserProvider);
    final nameState = ref.watch(nameSateProvider.state).state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Olá $nameUser'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              nameState,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (nameState == 'Michel Konig') {
            ref.read(nameSateProvider.notifier).state = 'Te amo';
          } else {
            ref.read(nameSateProvider.notifier).state = 'Michel Konig';
          }
        },
        child: const Icon(
          Icons.change_circle,
          size: 40,
        ),
      ),
    );
  }
}
