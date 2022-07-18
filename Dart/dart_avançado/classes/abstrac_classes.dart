void main() {
  // Animal animal = Animal(age: 10, name: 'Filomena');
  // Com o abstract não é possivel criar instânciar a classe Animal, apenas as
  // classes que irão extender dele

  Cat cat = Cat(name: 'Branquinha', age: 3);
  Dog dog = Dog(name: 'Pakita', age: 10);

  cat.feed();
  dog.feed();
}

abstract class Animal {
  String name;
  int age;

  Animal({
    required this.age,
    required this.name,
  });

  void feed() {
    print('Animal se alimentando');
  }
}

class Dog extends Animal {
  Dog({required super.name, required super.age});
// Esse super que tem ali é pra especificar que as propriedades vieram da
// classe da qual ela foi extendida

  void run() {
    print('Cachorro correndo....');
  }
}

class Cat extends Animal {
  final String? color;
  Cat({required super.name, required super.age, this.color});
// Neste caso temos super e this, o super é pra dizer que veio da classe
// da qual cat foi extendida e this para dizer que é dele

  void run() {
    print('Gato correndo....');
  }
}
