// ignore_for_file: public_member_api_docs, sort_constructors_first
class ComputerEntity {
  // Atributos
  String brand;
  String model;
  double price;
  int quantity;
  bool isNew;

  ComputerEntity({
    required this.brand,
    required this.model,
    required this.price,
    required this.quantity,
    required this.isNew,
  });

  bool priceIsValid() {
    if (price > 0) {
      return true;
    } else {
      return false;
    }
  }
}
