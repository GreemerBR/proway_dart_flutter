void main() {
  // Animal? animal;
  // print(animal?.name ?? 'Sem valor');
  // Aqui diz que se a classe for nula e o name também, deve apresentar a
  // mensagem 'Sem valor'
}

// Uma classe
class Animal {
  // Atributos
  // String? name;
  // int? age;
  // double? weigth;
  // colocar o ? diz que pode ser nulo

  String name;
  int age;
  double weigth;

  // Construtor mais simples (NãO NOMEADO)
  Animal(this.name, this.age, this.weigth);

  // Métodos
  void run() {
    // double result = age! * weigth!;
    // Colocar ! garante que vai ser informado um valor
    // double result = (age ?? 0) * (weigth ?? 0);
    // Colocar ?? define um default
    print('Correndo...');
  }

  void scream() {
    print('Gritando...');
  }

  // Estado atual
}
