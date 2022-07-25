void main() {
  void andarRapido(Pai pai) {
    pai.andar();
  }

  Pai pai = Pai();
  Filho filho = Filho();
  andarRapido(pai);
  andarRapido(filho);
}

class Pai {
  void andar() {
    print('Andando...');
  }
}

class Filho extends Pai {}
