import 'package:exercicio_26_07/app/presenter/controllers/cellphone_controller.dart';
import 'package:exercicio_26_07/core/get_it.dart';
import 'package:flutter/material.dart';

class CellphonesPage extends StatefulWidget {
  const CellphonesPage({Key? key}) : super(key: key);

  @override
  State<CellphonesPage> createState() => _CellphonesPageState();
}

class _CellphonesPageState extends State<CellphonesPage> {
  CellphoneController controller = getIt<CellphoneController>();

  TextEditingController brandController = TextEditingController();

  void pesquisar() {
    setState(() {
      controller
          .getCellphonesByBrand(brandController.text.trim().toLowerCase());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Search cellphone by brand',
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Column(
        children: [
          TextField(
            controller: brandController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.search),
              labelText: 'Digite a marca que deseja procurar',
            ),
          ),
          MaterialButton(
            color: Colors.green,
            onPressed: () {
              pesquisar();
            },
            child: const Text('Pesquisar'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: controller.cellphones.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 8,
                  margin: const EdgeInsets.all(10),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.cellphones[index].model,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            const Text(
                              'R\$ ',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              controller.cellphones[index].price
                                  .toStringAsFixed(2),
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Ano de lançamento: ',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              controller.cellphones[index].releaseYear
                                  .toString(),
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
