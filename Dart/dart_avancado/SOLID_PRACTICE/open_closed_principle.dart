void main() {
  ComputerApple computerApple = ComputerApple();
  // ignore: unused_local_variable
  ComputerPositivo computerPositivo = ComputerPositivo();

  UsarComputador usarComputador = UsarComputador(computerApple);
  usarComputador.mostrarLogo();
}

abstract class ComputerI {
  void mostrarLogoAoLigar();
}

class ComputerPositivo implements ComputerI {
  void mostrarLogoAoLigar() {
    print('Logo da Positivo');
  }
}

class ComputerApple implements ComputerI {
  void mostrarLogoAoLigar() {
    print('Logo da Apple');
  }
}

// Loja cresceu e agora vende também
class ComputerLenovo implements ComputerI {
  void mostrarLogoAoLigar() {
    print('Logo da Lenovo');
  }
}

class UsarComputador {
  final ComputerI computerI;
  UsarComputador(this.computerI);

  void mostrarLogo() {
    computerI.mostrarLogoAoLigar();
  }
}
