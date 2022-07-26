import '../../../../domain/entities/product_entitiy.dart';
import '../../get_by_id/get_product_by_id_datasource.dart';

class GetProductByIdDatasourceImp implements IGetProductByIdDatasource {
  @override
  ProductEntity? call(int id) {
    List<ProductEntity> products = [
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
        quantity: 0,
      ),
    ];

    for (ProductEntity product in products) {
      if (product.id == id) {
        return product;
      }
    }

    return null;
  }
}
