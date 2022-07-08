// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOn = false;

  Pessoa pessoa = Pessoa(
    name: 'Gregory',
    age: 29,
    hairColor: 'Castanho Claro',
  );

  void changeIsOn() {
    isOn = !isOn;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 150,
              width: 250,
              decoration: BoxDecoration(
                borderRadius: isOn /*If IsOn é*/
                    ? /*True então -> */ BorderRadius.circular(20)
                    : /* false então -> */ null,
                color: isOn /*If IsOn é*/
                    ? /*True então -> */ Colors.yellowAccent
                    : /* false então -> */ Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {
                changeIsOn();
              },
              child: const Text(
                'Ligar/Desligar',
                style: TextStyle(color: Colors.pinkAccent),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pessoa {
  String name;
  int age;
  String hairColor;
  Pessoa({
    required this.name,
    required this.age,
    required this.hairColor,
  });
}
