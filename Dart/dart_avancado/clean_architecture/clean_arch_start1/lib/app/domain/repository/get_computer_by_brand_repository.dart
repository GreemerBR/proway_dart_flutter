import '../entities/computer_entity.dart';

abstract class IGetComputerByBrandRepository {
  ComputerEntity getComputerByBrand(String brand);
}
