import 'package:brasil_fields/brasil_fields.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GetApiPage extends StatefulWidget {
  const GetApiPage({Key? key}) : super(key: key);

  @override
  State<GetApiPage> createState() => _GetApiPageState();
}

class _GetApiPageState extends State<GetApiPage> {
  TextEditingController cepController = TextEditingController();
  final cepFocusNode = FocusNode();
  Map cepData = {};

  Future<void> getInfoByCep() async {
    try {
      String cep = cepController.text.replaceAll(RegExp('[^0-9]+'), '');

      final response = await Dio().get('https://viacep.com.br/ws/$cep/json/');

      if (response.data['Erro'] != true) {
        cepData = response.data;
      } else {
        cepData.clear();
      }

      cepFocusNode.unfocus();

      setState(() {});
    } catch (e) {
      cepData.clear();

      setState(() {});

      // ignore: avoid_print
      print('CEP informado está incorreto!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Pesquisador de CEP'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  color: Colors.green.shade300,
                  borderRadius: BorderRadius.circular(45),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: TextFormField(
                    focusNode: cepFocusNode,
                    controller: cepController,
                    decoration: const InputDecoration(
                      icon: Icon(Icons.location_on),
                      hintText: 'Insira seu CEP',
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(fontSize: 20),
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CepInputFormatter(),
                    ],
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value!.length != 10) {
                        return 'O CEP precisa ser composto por 8 dígitos numéricos';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton.icon(
                style: const ButtonStyle(),
                onPressed: () async {
                  await getInfoByCep();
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.green.shade800,
                ),
                label: Text(
                  'Pesquisar',
                  style: TextStyle(color: Colors.green.shade800),
                ),
              ),
              const SizedBox(height: 40),
              Visibility(
                visible: cepData.isNotEmpty,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: const BorderSide(
                      color: Colors.green,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 28,
                              child: CircleAvatar(
                                backgroundColor: Colors.green.shade200,
                                radius: 25,
                                child: const Icon(
                                  Icons.home_work_outlined,
                                  size: 30,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 35,
                            ),
                            Text(
                              'Meu endereço',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.green.shade800,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${cepData['logradouro']}, ${cepData['bairro']}, ${cepData['localidade']}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '${cepData['cep']}',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 28,
                              child: CircleAvatar(
                                backgroundColor: Colors.green.shade200,
                                radius: 25,
                                child: Text(
                                  '${cepData['uf']}',
                                  style: const TextStyle(
                                    fontSize: 22,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
