import '../../../domain/entities/product_entitiy.dart';
import '../../../domain/repositories/get_all/get_all_products_repository.dart';
import '../../datasources/get_all/get_all_products_datasource.dart';

// Aqui será a implementação do resositório, porém não é ele que fará as
// requisições na API, Firebase, local. Essa responsabilidade é dos datasources.
// A implementação do repositório servirá como uma ponto.
class GetAllProductsRepositoryImp implements IGetAllProductsRepository {
  // Precisará de um contrato do datasource de trazer todos os produtos. E esse
  // contrato será pedido no construtor.

  // Para lá no controller, passarmos a implementação, seguindo o princípio de
  // inversão de dependência do SOLID - D - DIP

  final IGetAllProductsDatasource _datasource;
  GetAllProductsRepositoryImp(this._datasource);

  @override
  List<ProductEntity> call() {
    return _datasource.call();
  }
}
