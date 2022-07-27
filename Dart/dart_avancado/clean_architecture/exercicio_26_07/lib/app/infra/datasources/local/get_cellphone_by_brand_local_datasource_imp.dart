import '../../../domain/entities/cellphone_entity.dart';
import '../get_cellphone_by_brand_local_datasource.dart';

class GetCellphonesByBrandLocalDatasourceImp
    implements IGetCellphonesByBrandLocalDatasource {
  @override
  List<CellphoneEntity> call(String brand) {
    List<CellphoneEntity> cellphones = [
      CellphoneEntity(
        id: 1,
        brand: 'motorola',
        model: 'MotoG7',
        price: 989.10,
        releaseYear: 2019,
      ),
      CellphoneEntity(
        id: 2,
        brand: 'motorola',
        model: 'MotoG8 Power',
        price: 1498.50,
        releaseYear: 2020,
      ),
      CellphoneEntity(
        id: 3,
        brand: 'motorola',
        model: 'Edge20',
        price: 2339.10,
        releaseYear: 2021,
      ),
      CellphoneEntity(
        id: 4,
        brand: 'apple',
        model: 'iPhone13',
        price: 5479.20,
        releaseYear: 2021,
      ),
      CellphoneEntity(
        id: 5,
        brand: 'apple',
        model: 'iPhoneSE (2022)',
        price: 2969.10,
        releaseYear: 2022,
      ),
      CellphoneEntity(
        id: 6,
        brand: 'samsung',
        model: 'Galaxy A03',
        price: 799.00,
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
