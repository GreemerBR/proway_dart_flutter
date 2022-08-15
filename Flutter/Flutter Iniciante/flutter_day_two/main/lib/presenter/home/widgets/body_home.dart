import 'package:flutter/material.dart';

import 'card_weather_home.dart';
import 'container_eletronics_home.dart';
import 'list_test_horizontal.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          // Tudo que estiver dentro desse body vai estar no corpo do app
          children: [
            const CardWeatherHome(),
            const SizedBox(height: 30),
            const ListTextHorizontal(),
            Wrap(
              children: const [
                ContainerEletronicsHome(
                  name: 'Lamp',
                  icon: Icons.light,
                  isSelected: true,
                ),
                ContainerEletronicsHome(
                  name: 'Router',
                  icon: Icons.router,
                  isSelected: false,
                ),
                ContainerEletronicsHome(
                  name: 'Air',
                  icon: Icons.air,
                  isSelected: false,
                ),
                ContainerEletronicsHome(
                  name: 'Fridge',
                  icon: Icons.kitchen,
                  isSelected: false,
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
    );
  }
}
