import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tudo_junto_misturado/src/presentation/riverpod/movies/movies_provider.dart';

class DrawerMovies extends HookConsumerWidget {
  const DrawerMovies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 3, 37, 65),
            ),
            child: Text(
              'Opções de pesquisa',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
          ListTile(
            title: const Text(
              'Trazer filmes diários',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 37, 65),
                fontSize: 17,
              ),
            ),
            onTap: () {
              ref.read(moviesNotifierProvider.notifier).getAllTrendingMovies('day');
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            title: const Text(
              'Trazer filmes semanais',
              style: TextStyle(
                color: Color.fromARGB(255, 3, 37, 65),
                fontSize: 17,
              ),
            ),
            onTap: () {
              ref.read(moviesNotifierProvider.notifier).getAllTrendingMovies('week');
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
