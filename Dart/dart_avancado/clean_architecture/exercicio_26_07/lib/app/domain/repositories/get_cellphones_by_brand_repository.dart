import '../entities/cellphone_entity.dart';

abstract class IGetCellphonesByBrandRepository {
  List<CellphoneEntity> call(String brand);
}
