import 'package:app_notas_notifier/notes/notes_page.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lime.shade50,
        primarySwatch: Colors.lime,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.lime,
          centerTitle: true,
        ),
      ),
      home: NotesPage(),
    );
  }
}
