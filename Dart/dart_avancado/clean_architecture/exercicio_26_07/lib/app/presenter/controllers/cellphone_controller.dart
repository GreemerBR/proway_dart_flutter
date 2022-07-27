import '../../domain/entities/cellphone_entity.dart';
import '../../domain/usecases/get_cellphones_by_brand_usecases.dart';

class CellphoneController {
  final IGetCellphonesByBrandUsecases _getCellphonesByBrandUsecases;

  CellphoneController(this._getCellphonesByBrandUsecases);

  List<CellphoneEntity> cellphones = [];
  void getCellphonesByBrand(String brand) {
    cellphones = _getCellphonesByBrandUsecases.call(brand);
  }
}
