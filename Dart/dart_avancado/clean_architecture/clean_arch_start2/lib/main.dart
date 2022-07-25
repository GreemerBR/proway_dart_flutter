import 'package:clean_arch_start2/app/presenter/ui/products_page.dart';
import 'package:clean_arch_start2/core/get_it.dart';
import 'package:flutter/material.dart';

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
      title: 'Clean Arch',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsPage(),
    );
  }
}
