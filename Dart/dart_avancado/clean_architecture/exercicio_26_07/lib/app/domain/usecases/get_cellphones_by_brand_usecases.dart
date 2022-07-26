import '../entities/cellphone_entity.dart';

abstract class IGetCellphonesByBrandUsecases {
  List<CellphoneEntity> call(String brand);
}
