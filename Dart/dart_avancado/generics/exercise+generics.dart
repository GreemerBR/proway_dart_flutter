// ignore_for_file: public_member_api_docs, sort_constructors_first
// Faça uma classe genérica, que espera um atributo genérico, peça no construtor
// e tenha um método que imprima o valor desse atributo e retorne esse valor,
// usando generics
void main() {
  Ser ser = Ser(
    reino: 'Animal',
    quantidade: 5,
    seres: ['Cachorro', 'Gato', 'Pato', 'Macaco'],
  );

  ser.imprimirTerceiroSer();
}

class Ser<T> {
  String reino;
  int quantidade;
  List<T> seres;
  Ser({
    required this.reino,
    required this.quantidade,
    required this.seres,
  });

  T imprimirTerceiroSer() {
    print(seres[2]);
    return seres[2];
  }
}
