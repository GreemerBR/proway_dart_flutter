import '../../entities/product_entitiy.dart';

abstract class IGetProductsByIdUsecase {
  ProductEntity call(int id);
}
