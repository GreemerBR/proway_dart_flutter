import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier_movies/home_page.dart';

class SecondPage extends HookConsumerWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider.state);

    return Scaffold(
      appBar: AppBar(
        title: Text(counter.state.toString()),
      ),
      body: Container(),
    );
  }
}
