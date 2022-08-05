import 'dart:convert';

import 'package:flutter/foundation.dart';

class PercentageModel {
  final String name;
  final List<dynamic> country;
  PercentageModel({
    required this.name,
    required this.country,
  });

  PercentageModel copyWith({
    String? name,
    List<dynamic>? country,
  }) {
    return PercentageModel(
      name: name ?? this.name,
      country: country ?? this.country,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'country': country,
    };
  }

  factory PercentageModel.fromMap(Map<String, dynamic> map) {
    return PercentageModel(
      name: map['name'] as String,
      country: List<dynamic>.from(
        (map['country'] as List<dynamic>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory PercentageModel.fromJson(String source) =>
      PercentageModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PercentageModel(name: $name, country: $country)';

  @override
  bool operator ==(covariant PercentageModel other) {
    if (identical(this, other)) return true;

    return other.name == name && listEquals(other.country, country);
  }

  @override
  int get hashCode => name.hashCode ^ country.hashCode;
}
