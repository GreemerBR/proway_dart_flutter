// ignore_for_file: public_member_api_docs, sort_constructors_first
class MovieModel {
  String id;
  String title;
  String originalTitle;
  String originalTitleRomanised;
  String image;
  String movieBanner;
  String description;
  String director;
  String producer;
  String releaseDate;
  String runningTime;
  String rtScrore;

  MovieModel({
    required this.id,
    required this.title,
    required this.originalTitle,
    required this.originalTitleRomanised,
    required this.image,
    required this.movieBanner,
    required this.description,
    required this.director,
    required this.producer,
    required this.releaseDate,
    required this.runningTime,
    required this.rtScrore,
  });

  factory MovieModel.fromMap(Map<String, dynamic> map) {
    return MovieModel(
      id: map['id'] ?? "",
      title: map['title'] ?? "",
      originalTitle: map['original_title'] ?? "",
      originalTitleRomanised: map['original_title_romanised'] ?? "",
      image: map['image'] ?? "",
      movieBanner: map['movie_banner'] ?? "",
      description: map['description'] ?? "",
      director: map['director'] ?? "",
      producer: map['producer'] ?? "",
      releaseDate: map['release_date'] ?? "",
      runningTime: map['running_time'] ?? "",
      rtScrore: map['rt_scrore'] ?? "",
    );
  }
}
