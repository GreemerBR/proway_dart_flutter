import 'package:flutter/material.dart';

import 'widgets/app_bar_movies.dart';
import 'widgets/body_movies.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // drawer: DrawerMovies(),
      appBar: AppBarMovies(),
      body: BodyMovies(),
    );
  }
}
