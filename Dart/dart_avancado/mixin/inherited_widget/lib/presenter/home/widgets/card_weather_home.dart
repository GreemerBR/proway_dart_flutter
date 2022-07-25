import 'package:flutter/material.dart';
import 'package:main/core/app_get_it.dart';
import 'package:main/core/app_model.dart';

import '../../../inheriteds/inherited_date.dart';

class CardWeatherHome extends StatelessWidget {
  const CardWeatherHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final String dateTemp = InheritedDate.of(context)!.dateTemp;

    return Container(
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
            colorFilter: ColorFilter.mode(Colors.blueGrey, BlendMode.color)),
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
        crossAxisAlignment: CrossAxisAlignment.start, // Eixo secundário
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, bottom: 10),
            child: Text(
              getIt.get<AppModel>().dateTemp,
              style: const TextStyle(
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
    );
  }
}
