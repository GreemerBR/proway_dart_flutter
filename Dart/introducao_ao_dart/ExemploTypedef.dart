// void main() {
//   double somar(double a, double b) {
//     return a + b;
//   }

//   String substrair(double a, double b) {
//     return (a - b).toString();
//   }

//   Object calcular(double a, double b, Operacao operacao) {
//     return operacao(a, b);
//   }

//   print(calcular(22, 20, somar));
//   print(calcular(22, 20, substrair));
// }

// typedef Operacao = Object Function(double nota1, double nota2);

void main() {
  void somar(double valor1, valor2) {
    print('A soma deu ${valor1 + valor2}');
  }

  void multiplicar(double valor1, valor2) {
    print('A multiplicação deu ${valor1 * valor2}');
  }

  void subtrair(double valor1, valor2) {
    print('A substração deu ${valor1 - valor2}');
  }

  Calculadora calculadora = somar;
  calculadora(10, 20);

  calculadora = multiplicar;
  calculadora(10, 20);

  calculadora = subtrair;
  calculadora(10, 20);
}

typedef Calculadora = Function(double valor1, double valor2);
