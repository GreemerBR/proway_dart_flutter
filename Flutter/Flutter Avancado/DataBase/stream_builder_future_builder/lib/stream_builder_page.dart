import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_and_stream_builder/home_repository.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  final _repository = HomeRepository();
  final StreamController<List<String>> streamControler = StreamController();

  @override
  void initState() {
    getAllNamesForStream();
    super.initState();
  }

  void getAllNamesForStream() async {
    List<String> names = await _repository.getAllNames();
    streamControler.add(names);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder(
            stream: streamControler.stream,
            builder: (context, AsyncSnapshot<List<String>> snapshot) {
              if (snapshot.hasData) {
                // return ListView.builder(
                //   itemCount: snapshot.data!.length,
                //   itemBuilder: (context, index) {
                //     return Text(
                //       snapshot.data![index],
                //       textAlign: TextAlign.center,
                //       style: const TextStyle(fontSize: 35),
                //     );
                //   },
                // );
                return const SizedBox.shrink();
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
          StreamBuilder(
            stream: _repository.timedCounter(const Duration(seconds: 1), 15),
            builder: (context, AsyncSnapshot<int> snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Text(
                    "${snapshot.data}",
                    style: const TextStyle(fontSize: 35),
                  ),
                );
              } else {
                return const CircularProgressIndicator();
              }
            },
          )
        ],
      ),
    );
  }
}
