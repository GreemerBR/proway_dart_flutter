void main() {
  Bike bike = Bike();
  Caminhao caminhao = Caminhao();
  Moto moto = Moto();

  bike.andar();
  caminhao.carregarCargaPesada();
  moto.correr();
}

// abstração / interface / contrato - sinônimos
abstract class IVeiculo {
  void andar();
}

abstract class IVeiculoQueCorre extends IVeiculo {
  void correr();
}

abstract class IVeiculoCarga extends IVeiculo {
  void carregarCargaPesada();
}

class Bike implements IVeiculo {
  @override
  void andar() {
    // Code...
  }
}

class Caminhao implements IVeiculoCarga {
  @override
  void andar() {
    // Code...
  }

  @override
  void carregarCargaPesada() {
    // Code...
  }
}

class Moto implements IVeiculoQueCorre {
  @override
  void andar() {
    // Code...
  }

  @override
  void correr() {
    // Code...
  }
}
