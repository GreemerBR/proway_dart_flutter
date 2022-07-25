import 'package:clean_arch_start2/app/domain/usecases/get_all/get_all_products_usecase.dart';
import 'package:clean_arch_start2/app/domain/usecases/get_by_id/get_products_by_id_usecase.dart';

import '../../domain/entities/product_entitiy.dart';

class ProductController {
  // No nocco controller nós usaremos os usecase. Por isso, é solicitado uma
  // instancia do CONTRATO no construtor, fazendo o DIP

  final IGetAllProductsUsecase _getAllProductsUsecase;
  final IGetProductsByIdUsecase _getProductsByIdUsecase;

  ProductController(
    this._getAllProductsUsecase,
    this._getProductsByIdUsecase,
  ) {
    // Aqui no construtor é realizada a chamada do método getApppProducs para
    // trazer todos os produtos
    getAllProducts();
    getProductById();
  }
  // Foi criado um objeto aqui para usar ele nas peges
  List<ProductEntity> products = [];
  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }

  ProductEntity product = ProductEntity(
    id: 0,
    name: '',
    brand: '',
    category: '',
    price: 0.00,
    quantity: 0,
  );
  void getProductById(int id) {
    product = _getProductsByIdUsecase.call(id);
  }
}
