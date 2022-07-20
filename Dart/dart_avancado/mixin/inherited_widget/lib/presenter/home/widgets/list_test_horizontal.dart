import 'package:flutter/material.dart';
import 'package:main/core/app_get_it.dart';
import 'package:main/core/app_rooms.dart';

class ListTextHorizontal extends StatelessWidget {
  const ListTextHorizontal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView(
        // Para ter barra de rolagem
        // Por padrão vem na vertical
        scrollDirection: Axis.horizontal, // Coloca na horizontal
        padding: const EdgeInsets.only(left: 25),
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              getIt.get<AppRooms>().livingRoom,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              getIt.get<AppRooms>().kitchen,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              getIt.get<AppRooms>().dinningRoom,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              getIt.get<AppRooms>().garage,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              getIt.get<AppRooms>().room,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              getIt.get<AppRooms>().bathroom,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
