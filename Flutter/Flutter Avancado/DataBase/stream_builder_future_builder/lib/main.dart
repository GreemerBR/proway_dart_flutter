import 'package:flutter/material.dart';

import 'stream_builder_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.pink.shade100,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.pink,
          centerTitle: true,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage2(),
    );
  }
}
