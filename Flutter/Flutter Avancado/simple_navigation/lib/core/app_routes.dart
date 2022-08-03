import 'package:flutter/material.dart';

import '../main.dart';
import '../page_five.dart';
import '../page_four.dart';
import '../page_notfound.dart';
import '../page_six.dart';

var appRoutes = {
  MyHomePage.route: (context) => const MyHomePage(),
  PageFour.route: (context) => const PageFour(),
  PageFive.route: (context) => const PageFive(),
  PageSix.route: (context) => const PageSix(),
};

var onUnknownRoute = (context) {
  return MaterialPageRoute(
    builder: (context) {
      return const PageNotfound();
    },
  );
};
