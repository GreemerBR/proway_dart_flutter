import '../../../domain/entities/product_entitiy.dart';

// Vai ser o contrato do nosso datasource de trazer todos os produtos
abstract class IGetAllProductsDatasource {
  List<ProductEntity> call();
}
