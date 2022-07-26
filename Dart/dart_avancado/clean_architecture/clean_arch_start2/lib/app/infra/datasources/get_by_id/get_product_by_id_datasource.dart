import '../../../domain/entities/product_entitiy.dart';

abstract class IGetProductByIdDatasource {
  ProductEntity? call(int id);
}
