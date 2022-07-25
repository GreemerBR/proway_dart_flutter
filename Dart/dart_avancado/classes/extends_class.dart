void main() {
  Client client1 = Client();
  client1.name = 'Greg';
  client1.bankAccount = 'A91245ABC';
}

class Person {
  String? name;
  int? age;
  String? cpf;
}

// Isso é herança (herda tudo que a outra classe tem, atributos, métodos)
class Client extends Person {
  String? bankAccount;
}
