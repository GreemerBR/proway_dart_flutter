void main() {
  Cat cat = Cat();
  Dog dog = Dog();

  cat.feed();
  dog.feed();
}

//  O abstract faz com que a classe não possa ser instanciada, sendo apenas
// implementada. Desta forma chamamos apenas os métodos
abstract class Animal {
  void feed();
  void run(double distance);
}

class Dog implements Animal {
  @override
  void feed() {
    print('Cachorro comendo....');
  }

  @override
  void run(double distance) {
    print('Cachorro correndo....');
  }
}

class Cat implements Animal {
  @override
  void feed() {
    print('Gato comendo....');
  }

  @override
  void run(double distance) {
    print('Gato correndo....');
  }
}
