void main() {
  Computer.metodoEstatico();

  Computer computer = Computer('Positivo');
  computer.setBrand = 'Apple';
  computer.metodoMaisCompleto(['Gregory']);
  computer.metodoComArgumentosNomeados('Michel', valueOptional: 'Greg');

  print(computer.getBrand);
} // Método comum

class Computer {
  String _brand;
  // _ é usado para deixar como privado o atributo da classe
  // neste caso não faz muito sentido porque a classe e o método que está
  // chamando está classe estão no mesmo arquivo, então ela não se torna de fato
  // privada, mas é só pra ter a ideia da necessidade do set

///// MÉTODOS NORMAIS

  // Os três principais métodos especiais

// Método construtor
  Computer(this._brand);

// Método getter
  String get getBrand {
    return _brand;
  }

// Método setter
  set setBrand(String value) {
    _brand = value;
  }

///// MÉTODOS MAIS COMPLEXOS

// Método com retorno diferente e pedindo parâmetros
  List<Map<String, dynamic>> metodoMaisCompleto(List<String> names) {
    List<Map<String, dynamic>> myList = [
      {
        'name': 'Gregory',
        'age': 29,
      },
      {
        'name': 'Michel',
        'age': 25,
      }
    ];

    return myList;
  }

// Método estático
  static void metodoEstatico() {
    print('é chamdo sem precisar instanciar a classe');
  }

// Método com argumentos personalizados
  void metodoComArgumentosNomeados(
    String value, {
    required String valueOptional,
  }) {
    print('Hello, workd');
  }
}
