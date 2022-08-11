import 'package:flutter/material.dart';

import 'presenter/home/home_page.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(primarySwatch: Colors.green),
    ),
  );
}
