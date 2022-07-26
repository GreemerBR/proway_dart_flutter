import '../../domain/entities/cellphone_entity.dart';
import '../../domain/repositories/get_cellphones_by_brand_repository.dart';
import '../datasources/get_cellphone_by_brand_datasource.dart';

class GetCellphonesByBrandRepositoryImp
    implements IGetCellphonesByBrandRepository {
  final IGetCellphonesByBrandDatasource _repositories;
  GetCellphonesByBrandRepositoryImp(this._repositories);

  @override
  List<CellphoneEntity> call(String brand) {
    return _repositories.call(brand);
  }
}
