import 'package:clean_arch_start2/app/domain/entities/product_entitiy.dart';

import '../../get_by_id/get_product_by_id_datasource.dart';

class GetProductByIdDatasourceImp implements IGetProductByIdDatasource {
  @override
  ProductEntity call(int id) {
    if (id == 1) {
      return ProductEntity(
        id: 1,
        name: 'Computador',
        brand: 'HP',
        category: 'Eletrônicos',
        price: 5000.00,
        quantity: 3,
      );
    } else if (id == 2) {
      return ProductEntity(
        id: 2,
        name: 'Bicicleta',
        brand: 'Caloi',
        category: 'Veículos',
        price: -300.00,
        quantity: 2,
      );
    } else if (id == 3) {
      return ProductEntity(
        id: 3,
        name: 'Fone de ouvido gamer',
        brand: 'HyperX',
        category: 'Eletrônicos',
        price: 162.00,
        quantity: 0,
      );
    } else {
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
}
