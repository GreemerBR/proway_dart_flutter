import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(
              'https://naoseinadadotcomdotbr.files.wordpress.com/2017/03/harrypotter.jpg?w=615',
              semanticLabel: '''Harry Potter com sua coruja Edwiges em seu
                empoleirada em braço esquerdo. Harry está utilizando seu traje 
                trouxa padrão, calça caqui, camiseta azul clara e uma jaqueta
                azul marinha. Ele e Edwiges se encontram em uma pradaria ao
                entardecer e ao fundo o castelo de Hogwarts se faz presente
                juntamente com a Floresta Proibída. ''',
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.save,
                size: 40,
              ),
              tooltip: 'Botão salvar',
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Salvar',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Semantics(
              hint: 'Imagem bonitinha e roxa',
              child: InkWell(
                excludeFromSemantics: true,
                onTap: () {},
                child: const Text(
                  'Não salvar',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
