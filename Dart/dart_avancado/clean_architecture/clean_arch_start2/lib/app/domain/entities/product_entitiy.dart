// ignore_for_file: public_member_api_docs, sort_constructors_first

// Contém as regras de negócios corporativas
// É uma entidade
class ProductEntity {
  int id;
  String name;
  String brand;
  String category;
  double price;
  int quantity;

  ProductEntity({
    required this.id,
    required this.name,
    required this.brand,
    required this.category,
    required this.price,
    required this.quantity,
  });

  bool verifyAvailbility() {
    if (quantity > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool isPricePositive() {
    if (price > 0.00) {
      return true;
    } else {
      return false;
    }
  }

  bool isNameCorrect() {
    if (name.length >= 2) {
      return true;
    } else {
      return false;
    }
  }
}
