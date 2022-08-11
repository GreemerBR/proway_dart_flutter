import 'package:flutter/material.dart';
import 'package:get_api_ghibli/movies_page.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lime.shade200,
        primarySwatch: Colors.lime,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lime,
          centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MoviesPage(),
    );
  }
}
