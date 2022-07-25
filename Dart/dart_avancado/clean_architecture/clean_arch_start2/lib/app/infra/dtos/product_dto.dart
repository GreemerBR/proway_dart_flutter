// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:clean_arch_start2/app/domain/entities/product_entitiy.dart';

//  Nosso DTO é o DATA TRANSFORM OBJECT
// É ele que transformará nossos dados json em objeto dart.
// Ese será um reflexo do nosso Entity, porém poderemos ter os atributos com
// nomes diferentes, já que esses nomes aqui do DTO precisarão ser um reflexo
// dos campos na API.
class ProductDto extends ProductEntity {
  int idProduct;
  String nameProduct;
  String brandProduct;
  String categoryProduct;
  double priceProduct;
  int quantityProduct;

  // Como nós temos que extender de ProductEntity temos que passar os valores
  // dessa classe para o product entity, fazemos isso através do : super
  ProductDto({
    required this.idProduct,
    required this.nameProduct,
    required this.brandProduct,
    required this.categoryProduct,
    required this.priceProduct,
    required this.quantityProduct,
  }) : super(
          id: idProduct,
          name: nameProduct,
          brand: brandProduct,
          category: categoryProduct,
          price: priceProduct,
          quantity: quantityProduct,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idProduct': idProduct,
      'nameProduct': nameProduct,
      'brandProduct': brandProduct,
      'categoryProduct': categoryProduct,
      'priceProduct': priceProduct,
      'quantityProduct': quantityProduct,
    };
  }

  factory ProductDto.fromMap(Map<String, dynamic> map) {
    return ProductDto(
      idProduct: map['idProduct'] as int,
      nameProduct: map['nameProduct'] as String,
      brandProduct: map['brandProduct'] as String,
      categoryProduct: map['categoryProduct'] as String,
      priceProduct: map['priceProduct'] as double,
      quantityProduct: map['quantityProduct'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDto.fromJson(String source) =>
      ProductDto.fromMap(json.decode(source) as Map<String, dynamic>);
}

// Aqui no DTO poderá ter validações de dados, conversão, tratamentos.
// Porém tratamentos de erros com o Try Catch ficarão nos datasources.