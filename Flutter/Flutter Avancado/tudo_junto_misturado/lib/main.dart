import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'src/presentation/ui/splash/splash_scream.dart';

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
          useMaterial3: true,
          primarySwatch: Colors.pink,
          scaffoldBackgroundColor: Colors.pink.shade100,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.pink,
            centerTitle: true,
          )),
      home: const SplashScream(),
    );
  }
}
