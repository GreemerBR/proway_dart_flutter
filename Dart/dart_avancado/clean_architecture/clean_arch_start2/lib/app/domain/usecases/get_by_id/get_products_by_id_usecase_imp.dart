import 'package:clean_arch_start2/app/domain/entities/product_entitiy.dart';

import '../../repositories/get_by_id/get_product_by_id.dart';
import 'get_products_by_id_usecase.dart';

class GetProductsByIdUsecaseImp implements IGetProductsByIdUsecase {
  final IGetProductByIdRepository _byIdRepository;
  GetProductsByIdUsecaseImp(this._byIdRepository);

  @override
  ProductEntity call(int id) {
    ProductEntity product = _byIdRepository.call(id);
    return product;
  }
}
