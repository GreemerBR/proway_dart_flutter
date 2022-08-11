import '../../domain/entities/movie_entity.dart';

abstract class GetAllTrendingMoviesDatasource {
  Future<List<MovieEntity>> getAllTrendingMovie(String timeWindow);
}
