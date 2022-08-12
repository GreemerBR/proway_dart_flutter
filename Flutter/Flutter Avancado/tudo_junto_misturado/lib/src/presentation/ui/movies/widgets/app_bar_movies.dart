import 'package:flutter/material.dart';

import '../../../../../shared/utils/auxiliary_methods.dart';

class AppBarMovies extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMovies({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const SizedBox.shrink(),
      leadingWidth: 0,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const GradientText(
            'TMDB',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 143, 206, 162),
                Color.fromARGB(255, 4, 180, 227),
              ],
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          Container(
            width: 50,
            height: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(45),
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(255, 143, 206, 162),
                  Color.fromARGB(255, 4, 180, 227),
                ],
              ),
            ),
          ),
          const Spacer(),
          const Text(
            'Filmes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const Spacer(),
          const Text(
            'Séries',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const Spacer(),
          const Text(
            'Pessoas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 56);
}
