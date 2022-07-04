void main() {
/* Crie um algoritmo que tenha um Map e dentro desse Map um dos items é uma
lista tipada com alguns items dentro dela.
Depois imprima os valores desse Map pelo 'key' que tem a list*/

  List<String> alunos = [
    'Gregory',
    'Paola',
    'Henrique',
    'Natalia',
    'André',
    'Suelem'
  ];

  Map<String, dynamic> mapaNomes = {
    'alunos': alunos,
    'cachorro': 'dog',
    'gato': 'cat'
  };

  print(mapaNomes['alunos']);
}
