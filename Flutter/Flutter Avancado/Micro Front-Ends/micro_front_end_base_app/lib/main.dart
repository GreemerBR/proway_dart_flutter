import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:home/home.dart';
import 'package:login/app/pages/login_page.dart';
import 'package:login/login.dart';
import 'package:product/product.dart';

void main(List<String> args) {
  eventBus.on().listen(
    (event) {
      print(event);
    },
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    super.registerRoutes();

    return MaterialApp(
      title: 'Micro FrontEnds Simple Example',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.pink,
        ),
      ),
      initialRoute: '/login',
      onGenerateRoute: super.generateRoutes,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRoutes => {};

  @override
  List<MicroApp> get microApps {
    return [
      MicroAppProductResolver(),
      MicroAppLoginResolver(),
      MicroAppHomeResolver(),
    ];
  }
}
