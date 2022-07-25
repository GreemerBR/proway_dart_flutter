import '../../entities/product_entitiy.dart';

// Esse será o contrato do repositório, a implementação dele ficará dentro
// dos repositories de infra
abstract class IGetAllProductsRepository {
  // Ele será praticamente igual ao do usercase, as vezes a diferença é que
  // será um Future. Porém não podemos usar o Usecase para usar na implementação
  // do repositório pois estaríamos ferindo o princípio do SRP (Single
  // Responsability Principle) do SOLID.

  List<ProductEntity> call();
}
