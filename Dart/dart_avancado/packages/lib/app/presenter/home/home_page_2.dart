import 'package:flutter/material.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  Future<List<int>> getNumbers() async {
    await Future.delayed(const Duration(seconds: 4));
    return [1, 2, 3, 4, 5, 6, 7];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela inicial'),
      ),
      body: FutureBuilder(
        future: getNumbers(),
        builder: (context, AsyncSnapshot<List<int>> snapshot) {
          if (snapshot.hasData == false) {
            return const CircularProgressIndicator();
          }
          return ListTile(
            title: Text(snapshot.data![0].toString()),
          );
        },
      ),
    );
  }
}
