import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tudo_junto_misturado/src/domain/usecases/get_all_trending_movies/get_all_trending_movies_usecase_imp.dart';

import 'movies_notifier.dart';

final dioProvider = Provider((ref) => Dio());

final moviesUseCaseProvider = Provider((ref) {
  return GetAllTrendingMoviesUsecaseImp(_repository);
});

final moviesNotifierProvider = StateNotifierProvider((ref) {
  return MoviesNotifier(ref.watch(moviesUseCaseProvider));
});
