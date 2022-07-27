import 'package:flutter/material.dart';

import 'app/presenter/ui/cellphone_page.dart';
import 'core/get_it.dart';

void main(List<String> args) {
  setupDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Search cellphone by brand',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CellphonesPage(),
    );
  }
}
