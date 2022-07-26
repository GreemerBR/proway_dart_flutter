import '../../entities/product_entitiy.dart';

abstract class IGetProductByIdUsecase {
  ProductEntity? call(int id);
}
