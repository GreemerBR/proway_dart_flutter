void main() {
  Client client1 = Client();
  client1.name = 'Greg';
  client1.bankAccount = 'A91245ABC';
}

class Person {
  String? name;
  int? birthdayYear;
  String? cpf;

  int getAge() {
    return DateTime.now().year - birthdayYear!;
  }

  void login() {
    print('Login padrão');
  }
}

// Isso é herança (herda tudo que a outra classe tem, atributos, métodos)
class Client extends Person {
  String? bankAccount;

  // Herdando um método e sobrescrevendo ele
  @override
  void login() {
    print('Login como clinte');
  }

  @override
  int getAge() {
    super.getAge(); // Acessando o método getAge da classe Pai
    return 10;
  }
}
