import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../domain/entities/movie_entity.dart';
import '../../dtos/movie_dto.dart';
import '../get_all_trending_movies_datasource.dart';

class GetAllTrendingMoviesRemoteDatasourceImp implements GetAllTrendingMoviesDatasource {
  final Dio _dio;
  GetAllTrendingMoviesRemoteDatasourceImp(this._dio);

  @override
  Future<List<MovieEntity>> getAllTrendingMovie(String timeWindow) async {
    List<MovieEntity> movies = [];

    try {
      final response = await _dio.get('https://api.themoviedb.org/3/trending/movie/$timeWindow', queryParameters: {
        'api_key': '60e886fa567d7f23f83b9b13faa22a0f',
        'language': 'pt-BR',
      });

      movies = List.from(
        response.data['results'].map(
          (movie) {
            return MovieDto.fromMap(movie);
          },
        ),
      );
    } catch (e) {
      debugPrint(e.toString());
    }

    movies.sort((a, b) => b.voteAverage.compareTo(a.voteAverage));

    return movies;
  }
}
