// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:project_sqflite/database_helper.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textController = TextEditingController();
  final dbHelper = DatabaseHelper.instance;

  Future<String> getText() async {
    return await dbHelper.getText();
  }

  Future saveText() async {
    if (textController.text.isNotEmpty) {
      var respose = await dbHelper.insertText(textController.text);
      if (respose == 0) {
        print('Não deu certo a inserção!');
      } else {
        print('Deu certo a inserção!');
      }
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQFLITE'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: TextFormField(
              controller: textController,
              decoration: const InputDecoration(hintText: 'Digite algo...'),
            ),
          ),
          FutureBuilder(
            future: getText(),
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!);
              }
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.delete),
          ),
          FloatingActionButton(
            onPressed: () async {
              await saveText();
            },
            child: const Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}
