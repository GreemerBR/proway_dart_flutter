import 'package:flutter/material.dart';
import 'package:widget_test/initial_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              key: const ValueKey('elevated_buttom_salvar'),
              onPressed: () {
                debugPrint('Salvando.....');
              },
              child: const Text('Salvar'),
            ),
            ElevatedButton(
              key: const ValueKey('elevated_buttom_salvar_duplicated'),
              onPressed: () {
                debugPrint('Salvando2.....');
              },
              child: const Text('Salvar2'),
            ),
            InkWell(
              key: const ValueKey('inkwell_buttom_consultar'),
              onTap: () {
                debugPrint('Consultado.....');
              },
              child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(
                      45,
                    ),
                  ),
                  child: const Text('Consultar')),
            ),
            MaterialButton(
              key: const ValueKey('material_buttom_editar'),
              onPressed: () {
                debugPrint('Editando.....');
              },
              child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(
                      45,
                    ),
                  ),
                  child: const Text('Editar')),
            ),
            TextButton(
              key: const ValueKey('text_buttom_excluir'),
              onPressed: () {
                debugPrint('Excluindo.....');
              },
              child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.teal.shade100,
                    borderRadius: BorderRadius.circular(
                      45,
                    ),
                  ),
                  child: const Text('Excluir')),
            ),
            IconButton(
              key: const ValueKey('icon_button_next_page'),
              tooltip: 'Button Refresh',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const InitialPage(),
                  ),
                );
              },
              icon: const Icon(Icons.navigate_next_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
