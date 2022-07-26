import '../../entities/product_entitiy.dart';

abstract class IGetProductByIdRepository {
  ProductEntity? call(int id);
}
