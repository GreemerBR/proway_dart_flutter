import 'package:flutter/material.dart';

import '../movies/movies_page.dart';

class SplashScream extends StatefulWidget {
  const SplashScream({Key? key}) : super(key: key);

  @override
  State<SplashScream> createState() => _SplashScreamState();
}

class _SplashScreamState extends State<SplashScream> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then(
      (value) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) {
              return const MoviesPage();
            },
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          'assets/movie-time-wallpaper_1804982.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
