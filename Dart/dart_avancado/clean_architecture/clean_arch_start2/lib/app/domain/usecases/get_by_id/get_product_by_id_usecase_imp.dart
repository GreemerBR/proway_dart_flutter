import '../../entities/product_entitiy.dart';
import '../../repositories/get_by_id/get_product_by_id_repository.dart';
import 'get_product_by_id_usecase.dart';

class GetProductByIdUsecaseImp implements IGetProductByIdUsecase {
  final IGetProductByIdRepository _repository;
  GetProductByIdUsecaseImp(this._repository);

  @override
  ProductEntity? call(int id) {
    return _repository.call(id);
  }
}
