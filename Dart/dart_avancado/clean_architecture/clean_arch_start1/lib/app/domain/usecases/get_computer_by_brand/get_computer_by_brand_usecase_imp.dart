import '../../entities/computer_entity.dart';
import '../../repository/get_computer_by_brand_repository.dart';
import 'get_computer_by_brand_usecase.dart';

class GetComputerByBrandUsecaseImp implements IGetComputerByBrandUsecase {
  final IGetComputerByBrandRepository _getComputerByBrandRepository;
  GetComputerByBrandUsecaseImp(this._getComputerByBrandRepository);

  @override
  ComputerEntity call(String brand) {
    return _getComputerByBrandRepository.getComputerByBrand(brand);
  }
}
