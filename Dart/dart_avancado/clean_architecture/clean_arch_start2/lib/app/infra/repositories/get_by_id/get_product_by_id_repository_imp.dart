import '../../../domain/entities/product_entitiy.dart';
import '../../../domain/repositories/get_by_id/get_product_by_id_repository.dart';
import '../../datasources/get_by_id/get_product_by_id_datasource.dart';

class GetProductByIdRepositoryImp implements IGetProductByIdRepository {
  final IGetProductByIdDatasource _datasource;
  GetProductByIdRepositoryImp(this._datasource);

  @override
  ProductEntity? call(int id) {
    return _datasource.call(id);
  }
}
