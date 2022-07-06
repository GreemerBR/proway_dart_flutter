import 'package:flutter/material.dart';
import 'next_page.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'AppTreino',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Esqueleto da tela, tudo que vai esta naquela page
      appBar: AppBar(
        title: const Text(
          'House controller',
          style: TextStyle(
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [
          IconButton(
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
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // Tudo que estiver dentro desse body vai estar no corpo do app
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 25, vertical: 45), // Coloca espaço para dentro
                margin: const EdgeInsets.symmetric(
                    horizontal: 15, vertical: 15), // Coloca espaço para fora
                decoration: BoxDecoration(
                  // Decoração do container
                  image: const DecorationImage(
                      image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2014/08/09/15/45/clouds-414198_960_720.jpg',
                      ),
                      fit: BoxFit.cover,
                      colorFilter:
                          ColorFilter.mode(Colors.blueGrey, BlendMode.color)),
                  borderRadius: BorderRadius.circular(35), // Borda arredondada
                  boxShadow: [
                    // Cor da sombra
                    BoxShadow(
                      color: Colors.blueGrey.shade50,
                      blurRadius: 2, // Qual o tamanho da sombra
                      spreadRadius: 6, // O quanto vai se espalhar
                      offset: const Offset(1, 11), // Vai mudando até gostar
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center, // Eixo principal
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Eixo secundário
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 50, bottom: 10),
                      child: Text(
                        '7 Jul 2022',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.cloud,
                            color: Colors.white,
                            size: 35,
                          ),
                          SizedBox(width: 15),
                          Text(
                            'Cloudy',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '26',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '°C',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Text(
                              'Indoor Temp',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                '48.2%',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Outdoor Humidity',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                '52.99%',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Text(
                              'Indoor Humidity',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 75,
                child: ListView(
                  // Para ter barra de rolagem
                  // Por padrão vem na vertical
                  scrollDirection: Axis.horizontal, // Coloca na horizontal
                  padding: const EdgeInsets.only(left: 25),
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        'Living Room',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Kitchen',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Dinning Room',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Garage',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Room',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'Bathroom',
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                          left: 10,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 80, 156, 250),
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.shade100,
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: const Offset(4, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 40,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.light,
                                    size: 40,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                bottom: 15,
                              ),
                              child: Text(
                                'Lamp',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                bottom: 25,
                              ),
                              child: Text(
                                'OPENED',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                          left: 10,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.shade100,
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: const Offset(4, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 40,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.router,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.redAccent,
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                bottom: 15,
                              ),
                              child: Text(
                                'Router',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                bottom: 25,
                              ),
                              child: Text(
                                'CLOSED',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                          left: 10,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.shade100,
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: const Offset(4, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 40,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.air,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.redAccent,
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                bottom: 15,
                              ),
                              child: Text(
                                'Air',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                bottom: 25,
                              ),
                              child: Text(
                                'CLOSED',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 200,
                        padding: const EdgeInsets.only(
                          top: 20,
                          bottom: 10,
                          left: 10,
                          right: 10,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(35),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.shade100,
                              blurRadius: 10,
                              spreadRadius: 5,
                              offset: const Offset(4, 5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 10,
                                bottom: 40,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: const [
                                  Icon(
                                    Icons.kitchen,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.redAccent,
                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                bottom: 15,
                              ),
                              child: Text(
                                'Fridge',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                left: 15,
                                bottom: 25,
                              ),
                              child: Text(
                                'CLOSED',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                height: 100,
                width: 300,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 80, 156, 250),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.shade100,
                      blurRadius: 10,
                      spreadRadius: 5,
                      offset: const Offset(4, 5),
                    ),
                  ],
                ),
                child: Row(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
