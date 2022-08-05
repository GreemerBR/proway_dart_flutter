import 'package:flutter/material.dart';
import 'package:minhas_encomendas/feedback_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.purple.shade200,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.purple,
          centerTitle: true,
        ),
        primarySwatch: Colors.blue,
      ),
      home: const FeedbacksPage(),
    );
  }
}
