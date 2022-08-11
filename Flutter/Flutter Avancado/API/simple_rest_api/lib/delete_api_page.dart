import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DeleteApiPage extends StatefulWidget {
  const DeleteApiPage({Key? key}) : super(key: key);

  @override
  State<DeleteApiPage> createState() => _DeleteApiPageState();
}

class _DeleteApiPageState extends State<DeleteApiPage> {
  String baseUrl = 'http://ec2-54-80-244-185.compute-1.amazonaws.com:3333/api';
  late String urlDelete;

  Future postLogin() async {
    try {
      urlDelete =
          '$baseUrl/v1/owners/service/557a0a51-017a-44ea-8931-594083c0f150';
    } catch (e) {
      print('Deu erro na requisição $e');
    }

    var response = await Dio().delete(urlDelete);

    // ignore: avoid_print
    print(response.data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton.icon(
          style: const ButtonStyle(),
          onPressed: () async {
            postLogin();
          },
          icon: Icon(
            Icons.delete,
            color: Colors.green.shade800,
          ),
          label: Text(
            'Clica em mim pra deletar',
            style: TextStyle(color: Colors.green.shade800),
          ),
        ),
      ),
    );
  }
}
