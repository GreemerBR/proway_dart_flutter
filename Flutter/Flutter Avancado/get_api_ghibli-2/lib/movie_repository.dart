import 'package:dio/dio.dart';
import 'package:get_api_ghibli/movie_model.dart';

class MovieRepository {
  final Dio dio;
  MovieRepository(this.dio);

  Future<List<MovieModel>> getAllMovies() async {
    List<MovieModel> movies = [];

    try {
      final response = await dio.get('https://ghibliapi.herokuapp.com/films');

      movies = List.from(
        response.data.map(
          (movie) {
            return MovieModel.fromMap(movie);
          },
        ),
      );
    } catch (e) {
      print('Erro $e');
    }

    movies.sort(
      (a, b) => a.title.compareTo(b.title),
    );

    return movies;
  }
}
