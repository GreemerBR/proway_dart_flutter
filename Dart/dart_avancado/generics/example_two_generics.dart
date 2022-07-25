void main() {
  MinhaClasse<int> inteiro = MinhaClasse(29);
  MinhaClasse<String> textinho = MinhaClasse('Greg');
  MinhaClasse<bool> meuBool = MinhaClasse(true);

  inteiro.imprimir();
  textinho.imprimir();
  meuBool.imprimir();
}

class MinhaClasse<T> {
  T objeto;
  MinhaClasse(this.objeto);

  void imprimir() {
    print('$objeto - ${objeto.runtimeType}');
  }
}
