import 'package:get_it/get_it.dart';

import '../app/domain/usecases/get_cellphones_by_brand_usecases_imp.dart';
import '../app/infra/datasources/local/get_cellphone_by_brand_local_datasource_imp.dart';
import '../app/infra/repositories/get_cellphones_by_brand_repositories_imp.dart';
import '../app/presenter/controllers/cellphone_controller.dart';

final getIt = GetIt.instance;

void setupDependencies() {
// Datasources
  getIt.registerSingleton<GetCellphonesByBrandLocalDatasourceImp>(
    GetCellphonesByBrandLocalDatasourceImp(),
  );

// Repositories
  getIt.registerSingleton<GetCellphonesByBrandRepositoryImp>(
    GetCellphonesByBrandRepositoryImp(
      getIt.get<GetCellphonesByBrandLocalDatasourceImp>(),
    ),
  );
// Usecases
  getIt.registerSingleton<GetCellphonesByBrandUsecasesImp>(
    GetCellphonesByBrandUsecasesImp(
      getIt.get<GetCellphonesByBrandRepositoryImp>(),
    ),
  );

// Controllers
  getIt.registerSingleton<CellphoneController>(
    CellphoneController(
      getIt.get<GetCellphonesByBrandUsecasesImp>(),
    ),
  );
}
