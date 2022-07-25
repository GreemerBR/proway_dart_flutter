// Classe
class Pessoa {
  String? nome;
  int? idade;
  double? peso;
  double? altura;

  Pessoa.naoNomeado(
    this.altura,
    this.idade,
    this.nome,
    this.peso,
  );

  Pessoa.nomeadoOpcional({
    this.altura,
    this.idade,
    this.nome,
    this.peso,
  });

  Pessoa.nomeadoRequerido({
    required this.altura,
    required this.idade,
    required this.nome,
    required this.peso,
  });

  Pessoa.hibrido(
    this.altura, {
    required this.idade,
    required this.nome,
    required this.peso,
  });

  Pessoa.hibridoComDefault(
    this.altura, {
    this.idade = 29,
    required this.nome,
    required this.peso,
  });
}

// Classe abstrata
abstract class Animal {
  String raca;
  int idadeAnimal;

  Animal({
    required this.raca,
    required this.idadeAnimal,
  });

  void Alimentar() {
    print('Animal está se alimentando...');
  }
}

class Doguinho extends Animal {
  Doguinho({required super.raca, required super.idadeAnimal});

  void Correr() {
    print('Doguinho correndo....');
  }
}

class Gatito extends Animal {
  Gatito({required super.raca, required super.idadeAnimal});

  void Miar() {
    print('Catito miando....');
  }
}

// Classe interface
abstract class Esporte {
  void nome(String nomeEsporte);
  void mascote(String nomeMascote);
}

class Volei implements Esporte {
  @override
  void mascote(String nomeMascote) {
    print('O nome do mascote é Tadeu');
  }

  @override
  void nome(String nomeEsporte) {
    print('O nome do esporte é volei');
  }
}

class Golf implements Esporte {
  @override
  void mascote(String nomeMascote) {
    print('O nome do mascote é Takito');
  }

  @override
  void nome(String nomeEsporte) {
    print('O nome do esporte é golf');
  }
}
