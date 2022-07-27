import '../../domain/entities/cellphone_entity.dart';

abstract class IGetCellphonesByBrandLocalDatasource {
  List<CellphoneEntity> call(String brand);
}
