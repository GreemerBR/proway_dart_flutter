import 'package:clean_arch_start2/app/domain/entities/product_entitiy.dart';

abstract class IGetProductByIdDatasource {
  ProductEntity call(int id);
}
