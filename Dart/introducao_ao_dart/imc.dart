import 'dart:io';
import 'dart:math';

List<Paciente> pacientes = [];

void main() {
  int validacao = 1;

  while (validacao == 1) {
    Paciente paciente = Paciente();

    print("Informe o nome do paciente: ");
    String? nome = stdin.readLineSync()!;

    print("Informe o peso:");
    double? peso = double.parse(stdin.readLineSync()!);

    print("Informe a altura:");
    double? altura = double.parse(stdin.readLineSync()!);

    double imc = paciente.calcularImc(altura, peso);
    print("Seu imc é de: $imc");

    paciente.codigo = ultimoCodigo() + 1;
    paciente.nome = nome;
    paciente.peso = peso;
    paciente.altura = altura;

    pacientes.add(paciente);

    print('''Você deseja adicionar mais um paciente?
1 - Sim
2 - Não''');

    validacao = int.parse(stdin.readLineSync()!);
  }
}

int ultimoCodigo() {
  int ultimoCodigo = 0;

  for (var i = 0; i < pacientes.length; i++) {
    var paciente = pacientes[i];

    ultimoCodigo = paciente.codigo!;
  }

  return ultimoCodigo;
}

class Paciente {
  int? codigo;
  String? nome;
  double? altura;
  double? peso;
  double? imc;

  double calcularImc(double altura, double peso) {
    double imc = double.parse((peso / pow(altura, 2)).toStringAsFixed(2));
    return imc;
  }
}
