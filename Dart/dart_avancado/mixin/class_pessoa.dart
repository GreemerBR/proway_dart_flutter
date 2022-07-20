void main() {
  Ailton ailton = Ailton();
  ailton.programar();
  ailton.dormir();
}

class Pessoa {
  String? nome;
  String? cpf;

  void comer() => print('Comendo.....');
  void darcar() => print('Dançar.....');
  void beber() => print('Bebendo.....');
  void dormir() => print('Dormindo.....');
}

class Pedrinho extends Pessoa {}

class Maria extends Pessoa {}

class Ailton extends Pessoa with Codar, NaoDormir {}

//Com a palavra with eu uso o Mixins
class Carlos extends Pessoa {}

class Julia extends Pessoa with Codar, NaoDormir {}

// Para criar um Mixin eu usarei a palavra chave mixin e em seguida escrevo
// o nome seguindo os mesmos padrões de nomenclatura de uma classe
mixin Codar {
  void programar() {
    // Aqui escrevo o método que sejá injetado em outra classe
    print('Programando.....');
  }
}

mixin NaoDormir {
  void naoDormir() {
    print('Sempre acordado.....');
  }
}
