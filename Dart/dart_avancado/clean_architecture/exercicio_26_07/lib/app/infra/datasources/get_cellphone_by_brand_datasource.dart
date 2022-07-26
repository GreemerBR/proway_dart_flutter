import '../../domain/entities/cellphone_entity.dart';

abstract class IGetCellphonesByBrandDatasource {
  List<CellphoneEntity> call(String brand);
}
