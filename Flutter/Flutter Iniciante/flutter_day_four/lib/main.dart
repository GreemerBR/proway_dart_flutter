import 'package:flutter/material.dart';

import 'presenter/login/login_page.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mudando estado',
      home: LoginPage(),
    ),
  );
}
