import '../entities/cellphone_entity.dart';
import '../repositories/get_cellphones_by_brand_repository.dart';
import 'get_cellphones_by_brand_usecases.dart';

class GetCellphonesByBrandUsecasesImp implements IGetCellphonesByBrandUsecases {
  final IGetCellphonesByBrandRepository _repositories;

  GetCellphonesByBrandUsecasesImp(this._repositories);

  @override
  List<CellphoneEntity> call(String brand) {
    return _repositories.call(brand);
  }
}
