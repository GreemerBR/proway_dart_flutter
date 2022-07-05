import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Oi',
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          'Hello',
          style: Theme.of(context).textTheme.headline4,
        ),
        Text(
          'Hello',
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
