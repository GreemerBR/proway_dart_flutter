import 'package:get_api_ghibli/movie_model.dart';
import 'package:get_api_ghibli/movie_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final movieProvider = StateNotifierProvider<MovieNotifier, List<MovieModel>>(
  (ref) => MovieNotifier(),
);
