// ignore_for_file: public_member_api_docs, sort_constructors_first
void main() {
  Computer<Apple> computer = Computer(brand: 'Positivo', age: 10);

// Toda lista tem generics, pois o Dart não sabe qual o tipo que vamos definir
// para a mesma
  List<int> idades = [10, 2, 1];
  print(computer.primeiroValor(idades));

  // Quando passamos um tipo para um dddo genérico, o Dart tipa automaticamente
  // esse objeto durante toda a execução
}

// Uma forma de criar uma classe genérica(Ai podemos tipa-la quando formos usar)
class Computer<T> {
  String brand;
  int age;

  Computer({
    required this.brand,
    required this.age,
  });

// <T> quer dizer que é do tipo genérico, ou seja, não sabemos o tipo que vamos
// usar. Mas assim que usarmos ele vai reconhecer e tipar pra gente.
// Podemos usar o E, R, S ou T
  void openProgram<T>(T program) {
    print(program.toString());
  }

// Neste caso não sabemos qual será o retorno, não sabemos qual o tipo de lista,
// então usamos generics. E depois do nome do método nós usamos generics para
// falar que esse método terá generics.
  T primeiroValor<T>(List<T> lista) {
    return lista[0];
  }
}

class Apple {}

class Positivo {}
