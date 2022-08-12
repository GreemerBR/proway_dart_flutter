// ignore_for_file: avoid_print, duplicate_ignore

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PostApiPage extends StatefulWidget {
  const PostApiPage({Key? key}) : super(key: key);

  @override
  State<PostApiPage> createState() => _PostApiPageState();
}

class _PostApiPageState extends State<PostApiPage> {
  String baseUrl = 'http://ec2-54-80-244-185.compute-1.amazonaws.com:3333/api';
  late String urlLogin;
  late Map<String, dynamic> body;

  Future postLogin() async {
    try {
      urlLogin = '$baseUrl/v1/auth/login';

      // Map<String, dynamic> headers = {
      //   'accept': 'application/json',
      //   'Content-type': 'application/json'
      // };

      body = {'email': 'deveda4217@logodez.com', 'password': 'Teste@123'};
    } catch (e) {
      print('Deu erro na requisição $e');
    }

    var response = await Dio().post(
      urlLogin,
      data: body,
      // options: Options(
      //   headers: headers,
      // ),
    );

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
            Icons.login,
            color: Colors.green.shade800,
          ),
          label: Text(
            'Clica em mim pra logar',
            style: TextStyle(color: Colors.green.shade800),
          ),
        ),
      ),
    );
  }
}
