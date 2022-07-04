void main() {
  String pais = 'Brasil';
  String moeda = '';

  switch (pais) {
    case 'Argentina':
      moeda = 'Peso argentino';
      break;
    case 'Espanha':
      moeda = 'Euro';
      break;
    case 'Brasil':
      moeda = 'Real';
      break;
    default:
      moeda = 'Desconhecida';
  }

  print('O país é $pais');
  print('A moeda é $moeda');
}
