import '../../../domain/entities/cellphone_entity.dart';
import '../get_cellphone_by_brand_datasource.dart';

class GetCellphonesByBrandDatasourceImp
    implements IGetCellphonesByBrandDatasource {
  @override
  List<CellphoneEntity> call(String brand) {
    List<CellphoneEntity> cellphones = [
      CellphoneEntity(
        id: 1,
        brand: 'Motorola',
        model: 'MotoG8',
        price: 0.00,
        releaseYear: 2019,
      ),
      CellphoneEntity(
        id: 2,
        brand: 'Motorola',
        model: 'MotoG8',
        price: 0.00,
        releaseYear: 2020,
      ),
      CellphoneEntity(
        id: 3,
        brand: 'Motorola',
        model: 'Edge20',
        price: 0.00,
        releaseYear: 2021,
      ),
      CellphoneEntity(
        id: 4,
        brand: 'Apple',
        model: 'iPhone13',
        price: 0.00,
        releaseYear: 2021,
      ),
      CellphoneEntity(
        id: 5,
        brand: 'Apple',
        model: 'iPhoneSE (2022)',
        price: 0.00,
        releaseYear: 2022,
      ),
      CellphoneEntity(
        id: 6,
        brand: 'Samsung',
        model: 'Galaxy A03',
        price: 0.00,
        releaseYear: 2022,
      ),
    ];

    List<CellphoneEntity> cellphonesByBrand = [];
    for (CellphoneEntity cellphone in cellphones) {
      if (cellphone.brand == brand) {
        cellphonesByBrand.add(cellphone);
      }
    }

    return cellphonesByBrand;
  }
}
