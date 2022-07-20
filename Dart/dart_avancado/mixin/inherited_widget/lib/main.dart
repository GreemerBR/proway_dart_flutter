import 'package:flutter/material.dart';
import 'package:main/core/app_get_it.dart';
import 'package:main/inheriteds/inherited_date.dart';
import 'package:main/presenter/home/home_page.dart';

void main() {
  setupGetIt();
  runApp(
    InheritedDate(
      child: const MaterialApp(
        title: 'AppTreino',
        home: HomePage(),
        debugShowCheckedModeBanner: false,
      ),
    ),
  );
}
