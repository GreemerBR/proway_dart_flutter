import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../shared/utils/auxiliary_methods.dart';
import '../../../riverpod/movies/movies_provider.dart';
import 'card_movie.dart';

class BodyMovies extends HookConsumerWidget {
  const BodyMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movies = ref.watch(moviesNotifierProvider);

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Image.network(
                'https://images2.alphacoders.com/807/807567.jpg',
                color: const Color.fromARGB(255, 59, 127, 182).withOpacity(0.8),
                colorBlendMode: BlendMode.modulate,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Bem-vindo(a).',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const Text(
                      'Milhões de Filmes, Séries e Pessoas para Descobrir. Explore já.',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Busque por um Filme, Série ou Pessoa...',
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 22,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 96, 197, 187),
                                Color.fromARGB(255, 4, 180, 227),
                              ],
                            ),
                          ),
                          child: const Text(
                            'Pesquisar',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              top: 5,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Os mais populares',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 50,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(45),
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 143, 206, 162),
                        Color.fromARGB(255, 4, 180, 227),
                      ],
                    ),
                  ),
                  child: PopupMenuButton(
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.white,
                    ),
                    position: PopupMenuPosition.under,
                    itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        onTap: () {
                          ref.read(moviesNotifierProvider.notifier).getAllTrendingMovies('day');
                        },
                        height: 15,
                        value: 'Dia',
                        child: const GradientText(
                          'Dia',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 143, 206, 162),
                              Color.fromARGB(255, 4, 180, 227),
                            ],
                          ),
                        ),
                      ),
                      const PopupMenuDivider(),
                      PopupMenuItem<String>(
                        onTap: () {
                          ref.read(moviesNotifierProvider.notifier).getAllTrendingMovies('week');
                        },
                        height: 15,
                        value: 'Semana',
                        child: const GradientText(
                          'Semana',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 143, 206, 162),
                              Color.fromARGB(255, 4, 180, 227),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            child: Visibility(
              visible: movies.isNotEmpty,
              replacement: Shimmer.fromColors(
                baseColor: Colors.grey.shade300,
                highlightColor: Colors.grey.shade100,
                enabled: true,
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      childAspectRatio: 0.5,
                    ),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 275,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 20,
                            width: 125,
                            color: Colors.white,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              child: GridView.builder(
                padding: const EdgeInsets.all(15),
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  childAspectRatio: 0.48,
                ),
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return CardMovie(movie: movies[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
