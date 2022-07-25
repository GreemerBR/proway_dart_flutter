import 'package:clean_arch_start2/app/domain/entities/product_entitiy.dart';
import 'package:clean_arch_start2/app/infra/datasources/get_by_id/get_product_by_id_datasource.dart';

import '../../../domain/repositories/get_by_id/get_product_by_id.dart';

class GetProductByIdRepositoryImp implements IGetProductByIdRepository {
  final IGetProductByIdDatasource _byIdDatasource;
  GetProductByIdRepositoryImp(this._byIdDatasource);

  @override
  ProductEntity call(int id) {
    ProductEntity call(id) {
      return _byIdDatasource.call(id);
    }

    return ProductEntity(
      id: 0,
      name: '',
      brand: '',
      category: '',
      price: 0.00,
      quantity: 0,
    );
  }
}
