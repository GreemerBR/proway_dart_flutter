import 'package:flutter/material.dart';

import 'home_page.dart';

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
          primarySwatch: Colors.brown,
          scaffoldBackgroundColor: Colors.brown.shade100,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.brown,
            centerTitle: true,
          )),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
