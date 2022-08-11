import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_api_wizard_world_elixirs/elixir_model.dart';
import 'package:get_api_wizard_world_elixirs/elixir_repository.dart';

class ElixirsPage extends StatefulWidget {
  const ElixirsPage({Key? key}) : super(key: key);

  @override
  State<ElixirsPage> createState() => _ElixirsPageState();
}

class _ElixirsPageState extends State<ElixirsPage> {
  ElixirRepository repository = ElixirRepository(Dio());
  late Future<List<ElixirModel>> elixirs;

  @override
  void initState() {
    elixirs = repository.getAllElixirs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Lista de Poções',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            fontFamily: 'Lumos',
          ),
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: elixirs,
          builder: (context, AsyncSnapshot<List<ElixirModel>> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  ElixirModel myElixirs = snapshot.data![index];
                  return InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45),
                              side: const BorderSide(
                                color: Colors.orange,
                                width: 2,
                              ),
                            ),
                            title: Text(
                              myElixirs.name,
                              style: const TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'HarryP',
                              ),
                              textAlign: TextAlign.center,
                            ),
                            content: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                children: [
                                  const Text(
                                    'Características',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    myElixirs.characteristics,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Dificultade de preparo',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    myElixirs.difficulty,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Como preparar',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    myElixirs.manufacturer,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Efeitos colaterais',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    myElixirs.sideEffects,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Tempo de preparo',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    myElixirs.time,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Lista de ingredientes',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: myElixirs.ingredients.length,
                                      itemBuilder:
                                          (BuildContext context, int index3) {
                                        return Column(
                                          children: [
                                            Text(
                                              myElixirs
                                                  .ingredients[index3].name,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Lumos',
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    'Inventor',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Lumos',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: myElixirs.inventors.length,
                                      itemBuilder:
                                          (BuildContext context, int index2) {
                                        return Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              myElixirs
                                                  .inventors[index2].fisrtName,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontFamily: 'Lumos',
                                              ),
                                            ),
                                            Text(
                                              myElixirs
                                                  .inventors[index2].lastName,
                                              style: const TextStyle(
                                                fontSize: 16,
                                                fontFamily: 'Lumos',
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45),
                          side: const BorderSide(
                            color: Colors.green,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 1,
                                child: Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 24,
                                      child: CircleAvatar(
                                        backgroundColor: Colors.green,
                                        child: Icon(
                                          Icons.liquor,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    right: 25,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        myElixirs.name,
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'HarryP',
                                        ),
                                      ),
                                      Text(
                                        myElixirs.effect,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Lumos',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
