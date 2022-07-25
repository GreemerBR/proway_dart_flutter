import 'package:get_it/get_it.dart';

import '../app/domain/usecases/get_all/get_all_products_usecase_imp.dart';
import '../app/infra/datasources/local/get_all/get_all_products_local_datasource_imp.dart';
import '../app/infra/datasources/local/get_by_id/get_product_by_id_datasource_imp.dart';
import '../app/infra/repositories/get_all/get_all_products_repository_imp.dart';
import '../app/infra/repositories/get_by_id/get_product_by_id_repository_imp.dart';
import '../app/presenter/controllers/product_controller.dart';

final getIt = GetIt.instance;

void setupDependencies() {
  // Datasources
  getIt.registerSingleton<GetAllProductsLocalDatasourceImp>(
    GetAllProductsLocalDatasourceImp(),
    GetProductByIdDatasourceImp(),
  );

  // Repositories
  getIt.registerSingleton<GetAllProductsRepositoryImp>(
    GetAllProductsRepositoryImp(
      getIt.get<GetAllProductsLocalDatasourceImp>(),
      getIt.get<GetProductByIdDatasourceImp>(),
    ),
  );

  // Usecases
  getIt.registerSingleton<GetAllProductsUsecaseImp>(
    GetAllProductsUsecaseImp(
      getIt.get<GetAllProductsRepositoryImp>(),
      getIt.get<GetProductByIdRepositoryImp>(),
    ),
  );

  // Controllers
  getIt.registerSingleton<ProductController>(
    ProductController(
      getIt.get<GetAllProductsUsecaseImp>(),
      getIt.get<GetProductByIdUsecaseImp>(),
    ),
  );
}
