import 'package:flutter/material.dart';

import 'translate_page.dart';

class ShowDateTimePage extends StatelessWidget {
  const ShowDateTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        title: const Text(
          'Internationalisation Calendar',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const TranslatePage(),
              ));
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 15),
              child: Text(
                'Clica para a próxima página',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.calendar_month_outlined),
        onPressed: () {
          showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2050));
        },
      ),
    );
  }
}
