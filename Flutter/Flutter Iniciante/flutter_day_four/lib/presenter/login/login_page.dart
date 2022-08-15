import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: Column(
          children: [
            const Icon(
              Icons.person,
              size: 80,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(50, 196, 196, 196),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: loginController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.mail),
                    labelText: 'Coloque seu login',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(50, 196, 196, 196),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.password),
                    labelText: 'Coloque sua senha',
                  ),
                ),
              ),
            ),
            MaterialButton(
              color: Colors.green,
              onPressed: () {
                print(loginController.text);
                print(passwordController.text);
              },
              child: const Icon(Icons.login),
            )
          ],
        ),
      ),
    );
  }
}
