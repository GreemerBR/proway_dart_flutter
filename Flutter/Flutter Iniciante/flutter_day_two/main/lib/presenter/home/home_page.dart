import 'package:flutter/material.dart';

import '../next_page/next_page.dart';
import 'widgets/body_home.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Esqueleto da tela, tudo que vai esta naquela page
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
            bottom: Radius.circular(30),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            'House controller',
            style: TextStyle(
              fontFamily: 'Lumos',
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.green.shade200,
        elevation: 10,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const NextPage();
                    },
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_forward,
                size: 25,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: const BodyHome(),
    );
  }
}
