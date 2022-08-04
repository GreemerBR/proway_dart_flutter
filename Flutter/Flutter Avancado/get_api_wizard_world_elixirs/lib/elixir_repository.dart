import 'package:dio/dio.dart';
import 'package:get_api_wizard_world_elixirs/elixir_model.dart';

class ElixirRepository {
  final Dio dio;
  ElixirRepository(this.dio);

  Future<List<ElixirModel>> getAllElixirs() async {
    List<ElixirModel> elixirs = [];
    var url = 'https://wizard-world-api.herokuapp.com/Elixirs';

    try {
      final response = await dio.get(url);

      elixirs = List.from(
        response.data.map(
          (elixir) {
            return ElixirModel.fromMap(elixir);
          },
        ),
      );
    } catch (e) {
      // ignore: avoid_print
      print('Erro $e');
    }

    elixirs.sort(
      (a, b) => a.name.compareTo(b.name),
    );

    return elixirs;
  }
}
