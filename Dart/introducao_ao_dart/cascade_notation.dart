void main() {
  Animal animal = Animal();
  animal.idade = 5;
  animal.nome = "Python";

  animal.correr();
  animal.gritar();

  animal
    ..nome = 'Greg'
    ..idade = 29
    ..correr()
    ..gritar();
}

class Animal {
  String? nome;
  int? idade;

  void gritar() {
    print("Gritando....");
  }

  void correr() {
    print("Correndo....");
  }
}
