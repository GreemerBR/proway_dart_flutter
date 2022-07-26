import '../../../../domain/entities/product_entitiy.dart';
import '../../get_all/get_all_products_datasource.dart';

class GetAllProductsLocalDatasourceImp implements IGetAllProductsDatasource {
  @override
  List<ProductEntity> call() {
    return [
      ProductEntity(
        id: 1,
        name: 'Computador',
        brand: 'HP',
        category: 'Eletrônicos',
        price: 5000.00,
        quantity: 3,
      ),
      ProductEntity(
        id: 2,
        name: 'Bicicleta',
        brand: 'Caloi',
        category: 'Veículos',
        price: 300.00,
        quantity: 2,
      ),
      ProductEntity(
        id: 3,
        name: 'Fone de ouvido gamer',
        brand: 'HyperX',
        category: 'Eletrônicos',
        price: 162.00,
        quantity: 1,
      ),
    ];
  }
}
