import 'package:flutter/material.dart';

class ContainerEletronicsHome extends StatelessWidget {
  const ContainerEletronicsHome({
    Key? key,
    required this.name,
    required this.icon,
    required this.isSelected,
  }) : super(key: key);

  final String name;
  final IconData icon;
  final bool isSelected;

  Map<String, dynamic> visualChanges() {
    Color backColor;
    Color pointColor;
    String position;

    if (isSelected == true) {
      backColor = const Color.fromARGB(255, 80, 156, 250);
      pointColor = Colors.white;
      position = 'OPENED';
    } else {
      backColor = Colors.white;
      pointColor = Colors.redAccent;
      position = 'CLOSED';
    }
    return {
      'backColor': backColor,
      'pointColor': pointColor,
      'position': position
    };
  }

  @override
  Widget build(BuildContext context) {
    Map changes = visualChanges();
    return Container(
      width: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 10,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
        color: changes['backColor'],
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  icon,
                  size: 40,
                ),
                Icon(
                  Icons.circle,
                  color: changes['pointColor'],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              bottom: 15,
            ),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              bottom: 25,
            ),
            child: Text(
              changes['position'],
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
