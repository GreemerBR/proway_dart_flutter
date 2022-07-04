void main() {
  Animal animal = Animal('Totó', 20);
}

// ASSERTE é utilizado no modo debug
class Animal {
  String? nome;
  int? idade;

  Animal(this.nome, this.idade) : assert(nome != 'Totó', 'Nome inválido');
}
