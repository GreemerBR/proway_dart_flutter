// Isso aqui é o contrato do nosso caso de uso para trazer todos os produtos.
import '../../entities/product_entitiy.dart';

abstract class IGetAllProductsUsecase {
  // Será retornado a lista de produtos.
  List<ProductEntity> call();
  // O call(); também é chamado de funções callable, basicamento sendo chamada
  // quando instanciamos a classe.
}
