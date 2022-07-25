import '../../entities/product_entitiy.dart';
import '../../repositories/get_all/get_all_products_repository.dart';
import 'get_all_products_usecase.dart';

// Contém as regras de negócio da aplicação
// Essa é a implementação do caso de uso do Get all products.
class GetAllProductsUsecaseImp implements IGetAllProductsUsecase {
  // Aqui PRECISAREMOS de um CONTRATO do repositório para fazer a chamada
  // do método. E dependermos de ABSTRAÇÃO e NÃO DE IMPLEMENTAÇÃO, por isso o
  // CONTRATO.

  final IGetAllProductsRepository _repository;
  GetAllProductsUsecaseImp(this._repository);
  @override
  List<ProductEntity> call() {
    List<ProductEntity> listCorrect = [];
    List<ProductEntity> listProduts = _repository.call();
    for (ProductEntity product in listProduts) {
      if (product.verifyAvailbility() &&
          product.isNameCorrect() &&
          product.isPricePositive()) {
        listCorrect.add(product);
      }
    }
    return listCorrect;
  }
}
