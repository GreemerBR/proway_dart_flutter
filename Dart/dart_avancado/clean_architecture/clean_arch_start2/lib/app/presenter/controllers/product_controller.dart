import '../../domain/entities/product_entitiy.dart';
import '../../domain/usecases/get_all/get_all_products_usecase.dart';
import '../../domain/usecases/get_by_id/get_product_by_id_usecase.dart';

class ProductController {
  // No nocco controller nós usaremos os usecase. Por isso, é solicitado uma
  // instancia do CONTRATO no construtor, fazendo o DIP

  final IGetAllProductsUsecase _getAllProductsUsecase;
  final IGetProductByIdUsecase _getProductByIdUsecase;

  ProductController(
    this._getAllProductsUsecase,
    this._getProductByIdUsecase,
  ) {
    // Aqui no construtor é realizada a chamada do método getApppProducs para
    // trazer todos os produtos
    getAllProducts();
    // Aqui não chamamos o getProductById porque quando entramos na tela
    // queremos que ele mostre a lista de produtos, e só depois usar o
    // getProductById
  }
  // Foi criado um objeto aqui para usar ele nas peges
  List<ProductEntity> products = [];
  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }

  late ProductEntity product;
  void getProductById(int id) {
    product = _getProductByIdUsecase.call(id)!;
  }
}
