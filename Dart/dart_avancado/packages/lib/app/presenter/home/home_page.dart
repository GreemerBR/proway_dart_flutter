import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void openUrl() async {
    try {
      await launch(
        'https://api.whatsapp.com/send?phone=5545991318552&text=Ol%C3%A1%2C%20eu%20vi%20seu%20an%C3%BAncio%20no%20Deal.%20Podemos%20conversar%3F',
      );
    } catch (e) {
      // ignore: avoid_print
      print('Deu erro $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela inicial'),
      ),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Share.share('check out my instagram @greemer');
              },
              child: const Text('Compartilhar'),
            ),
            MaterialButton(
              color: Colors.greenAccent,
              onPressed: () {
                openUrl();
              },
              child: const Text('Abrir link'),
            ),
            Row(
              children: const [
                Expanded(
                  child: AutoSizeText(
                    'Olá, tudo bem?',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                    minFontSize: 10,
                    maxLines: 2,
                  ),
                ),
                Expanded(
                  child: AutoSizeText(
                    'Olá, tudo bem?',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                    minFontSize: 10,
                    maxLines: 1,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
