// 1. Temos a seguinte classe abaixo, faça um refactor oara cumprir o S do SOLID

// S do SOLID

class CartWrong {
  getOrderDetails() {}
  getCart() {}
  insertOrderRepository() {}
  deleteOrderRepository() {}
  updateOrderRepository() {}
  selectOrderRepository() {}
  removeCartRepository() {}
  saveCartRepository() {}
}

class Order {
  getOrderDetails() {}
  insertOrderRepository() {}
  deleteOrderRepository() {}
  updateOrderRepository() {}
  selectOrderRepository() {}
}

class Cart {
  getCart() {}
  removeCartRepository() {}
  saveCartRepository() {}
}

/*
2. Olhando o exemplo do código que dei sobre cada tópico, faça o seu, usando
uma estrutura de arquivos similares e se inspirando nos exemplos escritos.
*/

// O do SOLID

void main1() {
  JogadorVolei jogadorVolei = JogadorVolei();
  JogadorHandebol jogadorHandebol = JogadorHandebol();

  Placar placar = Placar();
  placar.jogar(jogadorVolei);
  placar.jogar(jogadorHandebol);
}

abstract class Jogo {
  void jogando();
}

class JogadorVolei implements Jogo {
  @override
  void jogando() {
    print('Jogando volei...');
  }
}

class JogadorHandebol implements Jogo {
  @override
  void jogando() {
    print('Jogando handebol....');
  }
}

class Placar {
  int? placar;

  void jogar(Jogo jogador) {
    jogador.jogando();
  }
}

// L do SOLID

void main2() {
  var animal1 = Animal();
  var peixe1 = Peixe();

  void imprimirComendo(Animal objeto) {
    return objeto.comer();
  }

  imprimirComendo(animal1);
  imprimirComendo(peixe1);
}

class Animal {
  void comer() {
    print('Comendo....');
  }
}

class Peixe extends Animal {
  void comer() {
    print('Comendo enquanto nada....');
  }

  void nadando() {
    print('Nadando....');
  }
}

// I do SOLID

abstract class Veiculos {
  void transportar();
}

abstract class VeiculosMotorizados extends Veiculos {
  void abastecer();
}

abstract class VeiculosAereos extends VeiculosMotorizados {
  void voar();
}

abstract class VeiculosMarinhos extends VeiculosMotorizados {
  void flutuar();
}

abstract class VeiculosMarinhosEspeciais extends VeiculosMarinhos {
  void submergir();
}

class Bicicleta implements Veiculos {
  void transportar() {
    // Faz algo ...
  }
}

class Carro implements VeiculosMotorizados {
  void transportar() {
    // Faz algo ...
  }

  void abastecer() {
    // Faz algo ...
  }
}

class Aviao implements VeiculosAereos {
  void transportar() {
    // Faz algo ...
  }

  void abastecer() {
    // Faz algo ...
  }

  void voar() {
    // Faz algo....
  }
}

class Navio implements VeiculosMarinhos {
  void transportar() {
    // Faz algo ...
  }

  void abastecer() {
    // Faz algo ...
  }

  void flutuar() {
    // Faz algo...
  }
}

class Submarino implements VeiculosMarinhosEspeciais {
  void transportar() {
    // Faz algo ...
  }

  void abastecer() {
    // Faz algo ...
  }

  void flutuar() {
    // Faz algo...
  }

  void submergir() {
    // Faz algo....
  }
}

// D do SOLID

void main3() {
  BolinhaDeQueijo bolinhaDeQueijo = BolinhaDeQueijo();
  // ignore: unused_local_variable
  Coxinha coxinha = Coxinha();

  // ignore: unused_local_variable
  Comer comer = Comer(bolinhaDeQueijo);
}

abstract class Salgadinho {
  void comer();
}

class BolinhaDeQueijo implements Salgadinho {
  void comer() {
    // Faz algo ....
  }
}

class Coxinha implements Salgadinho {
  void comer() {
    // Faz algo
  }
}

class Comer {
  Salgadinho salgado;
  Comer(this.salgado);
}
