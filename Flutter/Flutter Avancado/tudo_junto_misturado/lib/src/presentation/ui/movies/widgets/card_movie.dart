import 'package:flutter/material.dart';

import '../../../../../shared/utils/auxiliary_methods.dart';
import '../../../../domain/entities/movie_entity.dart';

class CardMovie extends StatelessWidget {
  const CardMovie({
    Key? key,
    required this.movie,
  }) : super(key: key);

  final MovieEntity movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                'https://image.tmdb.org/t/p/w500/${movie.posterPath}',
              ),
            ),
            Positioned(
              right: 10,
              top: 10,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: Colors.white.withOpacity(0.8),
                child: PopupMenuButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.black,
                  ),
                  position: PopupMenuPosition.under,
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      height: 15,
                      value: 'Adicionar a uma lista',
                      child: Row(
                        children: [
                          const Icon(
                            Icons.list_rounded,
                            color: Colors.black,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Adicionar a uma lista',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const PopupMenuDivider(),
                    PopupMenuItem<String>(
                      height: 15,
                      value: 'Adicionar aos favoritos',
                      child: Row(
                        children: [
                          const Icon(
                            Icons.favorite,
                            color: Colors.black,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Adicionar aos favoritos',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const PopupMenuDivider(),
                    PopupMenuItem<String>(
                      height: 15,
                      value: 'Lista de interesses',
                      child: Row(
                        children: [
                          const Icon(
                            Icons.bookmark,
                            color: Colors.black,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Lista de interesses',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const PopupMenuDivider(),
                    PopupMenuItem<String>(
                      height: 15,
                      value: 'Sua avaliação',
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.black,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            'Sua avaliação',
                            style: TextStyle(
                              color: Colors.grey.shade600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 13,
              top: 255,
              child: TweenAnimationBuilder(
                tween: Tween<double>(
                  begin: 0,
                  end: 1,
                ),
                duration: const Duration(milliseconds: 1500),
                builder: (
                  BuildContext context,
                  dynamic value,
                  Widget? child,
                ) {
                  if (value == 1) {
                    return CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 8, 28, 34),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          TweenAnimationBuilder(
                            tween: Tween<double>(
                              begin: 0.0,
                              end: movie.voteAverage / 10,
                            ),
                            duration: const Duration(seconds: 2),
                            builder: (
                              BuildContext context,
                              dynamic value,
                              Widget? child,
                            ) {
                              return CircularProgressIndicator(
                                value: value,
                                backgroundColor: getSecondColor(movie.voteAverage),
                                color: getMainColor(movie.voteAverage),
                              );
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TweenAnimationBuilder(
                                tween: Tween<double>(
                                  begin: 0.0,
                                  end: movie.voteAverage * 10,
                                ),
                                duration: const Duration(seconds: 2),
                                builder: (
                                  BuildContext context,
                                  dynamic value,
                                  Widget? child,
                                ) {
                                  return Text(
                                    (value).toStringAsFixed(0),
                                    style: const TextStyle(
                                      fontSize: 13,
                                    ),
                                  );
                                },
                              ),
                              const Text(
                                '%',
                                style: TextStyle(
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 25,
            left: 15,
          ),
          child: Text(
            movie.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Text(formatDate(movie.releaseDate)),
        ),
      ],
    );
  }
}
