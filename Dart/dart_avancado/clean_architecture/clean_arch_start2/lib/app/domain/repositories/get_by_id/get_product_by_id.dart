import 'package:clean_arch_start2/app/domain/entities/product_entitiy.dart';

abstract class IGetProductByIdRepository {
  ProductEntity call(int id);
}
