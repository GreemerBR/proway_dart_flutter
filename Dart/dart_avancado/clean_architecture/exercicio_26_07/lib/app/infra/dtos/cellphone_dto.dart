// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:exercicio_26_07/app/domain/entities/cellphone_entity.dart';

class CellphoneDto extends CellphoneEntity {
  int idCellphone;
  String brandCellphone;
  String modelCellphone;
  double priceCellphone;
  int releaseYearCellphone;
  CellphoneDto({
    required this.idCellphone,
    required this.brandCellphone,
    required this.modelCellphone,
    required this.priceCellphone,
    required this.releaseYearCellphone,
  }) : super(
          id: idCellphone,
          brand: brandCellphone,
          model: modelCellphone,
          price: priceCellphone,
          releaseYear: releaseYearCellphone,
        );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idCellphone': idCellphone,
      'brandCellphone': brandCellphone,
      'modelCellphone': modelCellphone,
      'priceCellphone': priceCellphone,
      'releaseYearCellphone': releaseYearCellphone,
    };
  }

  factory CellphoneDto.fromMap(Map<String, dynamic> map) {
    return CellphoneDto(
      idCellphone: map['idCellphone'] as int,
      brandCellphone: map['brandCellphone'] as String,
      modelCellphone: map['modelCellphone'] as String,
      priceCellphone: map['priceCellphone'] as double,
      releaseYearCellphone: map['releaseYearCellphone'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CellphoneDto.fromJson(String source) =>
      CellphoneDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
