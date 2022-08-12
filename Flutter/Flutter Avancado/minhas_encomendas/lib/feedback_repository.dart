// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:minhas_encomendas/percentage_model.dart';

class FeedbackRepository {
  final Dio dio;
  FeedbackRepository(this.dio);

  Future<List<PercentageModel>> getFeedbacks(PercentageModel feedbackModel) async {
    List<PercentageModel> events = [];

    // var data = {
    //   "feedbackType": "General",
    //   "feedback": "string",
    //   "entityId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
    // };

    final response = await dio.post(
      'https://wizard-world-api.herokuapp.com/Feedback',
      data: feedbackModel,
    );

    print(response.data);

    print(events);

    return events;
  }
}
