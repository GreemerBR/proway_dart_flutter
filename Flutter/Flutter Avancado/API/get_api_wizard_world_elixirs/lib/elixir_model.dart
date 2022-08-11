// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class ElixirModel {
  final String id;
  final String name;
  final String effect;
  final String sideEffects;
  final String characteristics;
  final String time;
  final String difficulty;
  final List<IngredientModel> ingredients;
  final List<InventorModel> inventors;
  final String manufacturer;

  ElixirModel({
    required this.id,
    required this.name,
    required this.effect,
    required this.sideEffects,
    required this.characteristics,
    required this.time,
    required this.difficulty,
    required this.ingredients,
    required this.inventors,
    required this.manufacturer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'effect': effect,
      'sideEffects': sideEffects,
      'characteristics': characteristics,
      'time': time,
      'difficulty': difficulty,
      'ingredients': ingredients.map((x) => x.toMap()).toList(),
      'inventors': inventors.map((x) => x.toMap()).toList(),
      'manufacturer': manufacturer,
    };
  }

  factory ElixirModel.fromMap(Map<String, dynamic> map) {
    return ElixirModel(
      id: map['id'] ?? "",
      name: map['name'] ?? "",
      effect: map['effect'] ?? "",
      sideEffects: map['sideEffects'] ?? "",
      characteristics: map['characteristics'] ?? "",
      time: map['time'] ?? "",
      difficulty: map['difficulty'] ?? "",
      ingredients: List<IngredientModel>.from(
        (map['ingredients'] as List<dynamic>).map<IngredientModel>(
          (ingredient) =>
              IngredientModel.fromMap(ingredient as Map<String, dynamic>),
        ),
      ),
      inventors: List<InventorModel>.from(
        (map['inventors'] as List<dynamic>).map<InventorModel>(
          (inventor) => InventorModel.fromMap(inventor as Map<String, dynamic>),
        ),
      ),
      manufacturer: map['manufacturer'] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory ElixirModel.fromJson(String source) =>
      ElixirModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class IngredientModel {
  final String id;
  final String name;

  IngredientModel({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory IngredientModel.fromMap(Map<String, dynamic> map) {
    return IngredientModel(
      id: map['id'] ?? "",
      name: map['name'] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory IngredientModel.fromJson(String source) =>
      IngredientModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

class InventorModel {
  final String id;
  final String fisrtName;
  final String lastName;

  InventorModel({
    required this.id,
    required this.fisrtName,
    required this.lastName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'fisrtName': fisrtName,
      'lastName': lastName,
    };
  }

  factory InventorModel.fromMap(Map<String, dynamic> map) {
    return InventorModel(
      id: map['id'] ?? "",
      fisrtName: map['fisrtName'] ?? "",
      lastName: map['lastName'] ?? "",
    );
  }

  String toJson() => json.encode(toMap());

  factory InventorModel.fromJson(String source) =>
      InventorModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
