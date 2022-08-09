import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:minhas_encomendas/feedback_repository.dart';

// import 'feedback_request_model.dart';

class FeedbacksPage extends StatefulWidget {
  const FeedbacksPage({Key? key}) : super(key: key);

  @override
  State<FeedbacksPage> createState() => _FeedbacksPageState();
}

class _FeedbacksPageState extends State<FeedbacksPage> {
  final _repository = FeedbackRepository(Dio());
  // late Future<List<FeedbackRequestModel>> events;

  // @override
  // void initState() {
  //   events = _repository.getFeedbacks(
  //     FeedbackRequestModel(
  //       feedbackType: 'Geral',
  //       feedback: 'Gostei',
  //       entityId: 'Greg',
  //     ),
  //   );
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feedback Wizard World'),
      ),
      body: Container(),
    );
  }
}
