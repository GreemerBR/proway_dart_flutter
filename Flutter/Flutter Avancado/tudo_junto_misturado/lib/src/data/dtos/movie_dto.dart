import '../../domain/entities/movie_entity.dart';

class MovieDto extends MovieEntity {
  MovieDto({
    required bool adult,
    required String backdropPath,
    required int id,
    required String name,
    required String originalLanguage,
    required String originalName,
    required String overview,
    required String posterPath,
    required String mediaType,
    required List<int> genreIds,
    required double popularity,
    required String firstAirDate,
    required double voteAverage,
    required int voteCount,
    required List<String> originCountry,
  }) : super(
          adult: adult,
          backdropPath: backdropPath,
          id: id,
          name: name,
          originalLanguage: originalLanguage,
          originalName: originalName,
          overview: overview,
          posterPath: posterPath,
          mediaType: mediaType,
          genreIds: genreIds,
          popularity: popularity,
          firstAirDate: firstAirDate,
          voteAverage: voteAverage,
          voteCount: voteCount,
          originCountry: originCountry,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'adult': adult});
    result.addAll({'backdrop_path': backdropPath});
    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'original_language': originalLanguage});
    result.addAll({'original_name': originalName});
    result.addAll({'overview': overview});
    result.addAll({'poster_path': posterPath});
    result.addAll({'media_type': mediaType});
    result.addAll({'genre_ids': genreIds});
    result.addAll({'popularity': popularity});
    result.addAll({'first_air_date': firstAirDate});
    result.addAll({'vote_average': voteAverage});
    result.addAll({'vote_count': voteCount});
    result.addAll({'origin_country': originCountry});
    return result;
  }

  factory MovieDto.fromMap(Map<String, dynamic> map) {
    return MovieDto(
      adult: map['adult'] as bool,
      backdropPath: map['backdrop_path'] as String,
      id: map['id'].toInt() as int,
      name: map['name'] as String,
      originalLanguage: map['original_language'] as String,
      originalName: map['original_name'] as String,
      overview: map['overview'] as String,
      posterPath: map['poster_path'] as String,
      mediaType: map['media_type'] as String,
      genreIds: List<int>.from((map['genre_ids'] as List<int>)),
      popularity: map['popularity'].toDouble() as double,
      firstAirDate: map['first_air_date'] as String,
      voteAverage: map['vote_average'].toDouble() as double,
      voteCount: map['vote_count'].toInt() as int,
      originCountry: List<String>.from((map['origin_country'] as List<String>)),
    );
  }
}
