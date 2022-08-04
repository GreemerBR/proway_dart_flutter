import 'package:brasil_fields/brasil_fields.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rest_api_with_models/cep_models.dart';

class CepPage extends StatefulWidget {
  const CepPage({Key? key}) : super(key: key);

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  final cepController = TextEditingController();
  final cepFocusNode = FocusNode();
  CepModel? cepModel;

  Future<CepModel?> getInfoByCep() async {
    try {
      String cep = cepController.text.replaceAll(RegExp('[^0-9]+'), '');

      if (cep.length >= 8) {
        final response =
            await Dio().get('https://viacep.com.br/ws/89012360/json/');

        if (response.data['erro'] != true) {
          return CepModel.fromMap(response.data);
        }
      }
      cepFocusNode.unfocus();
    } catch (e) {
      print('Deu erro.');
    } finally {
      setState(() {});
    }
    return null;
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
              FutureBuilder(
                future: getInfoByCep(),
                builder: (context, AsyncSnapshot<CepModel?> snapshot) {
                  if (snapshot.data == null) {
                    return const Text('Nenhum resultado ainda.');
                  }
                  cepModel = snapshot.data;
                  return Card(
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
                                'Seu endereço',
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
                                      '${cepModel!.logradouro}, ${cepModel!.bairro}, ${cepModel!.localidade}',
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
                                      cepModel!.cep,
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
                                    cepModel!.uf,
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
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
