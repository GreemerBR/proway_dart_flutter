void main() {
  Uva uva = Uva();
  Morango morango = Morango();

  // ignore: unused_local_variable
  Pessoa pessoa = Pessoa(uva);
  // ignore: unused_local_variable
  Pessoa s = Pessoa(morango);
}

abstract class IAlimento {
  bool estaEstragado();
  bool ehSaudavel();
}

class Uva implements IAlimento {
  @override
  bool ehSaudavel() {
    return true;
  }

  @override
  bool estaEstragado() {
    return false;
  }
}

class Morango implements IAlimento {
  @override
  bool ehSaudavel() {
    return true;
  }

  @override
  bool estaEstragado() {
    return true;
  }
}

class Pessoa {
  final IAlimento alimento;
  Pessoa(this.alimento);

  void comer() {
    if (alimento.estaEstragado() == false) {
      print('Comento ${alimento}');
    }
  }

  void comprar() {}
}
