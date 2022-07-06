// ignore_for_file: unused_local_variable

void main() {
  num minhaIdade = 29;
  int idadaNamo = 26;
  double idadeMano = 18;

  String meuNome = 'Gregory';
  String nomeNamo = "Michel";
  String nomeMano = '''Murilo
Viegas
Zimmer''';

  bool toVivo = true;
  bool toMorto = false;

  List<String> nomes = ['Gregory', 'Michel', 'Murilo'];

  Set<int> idades = {18, 26, 29};

  Map<String, String> quemSomos = {
    'eu': 'Gregory',
    'namo': 'Michel',
    'mano': 'Murilo'
  };

  double number = 20.1279;

  print('Meu numero é ${number.toStringAsPrecision(3)}');

  List<String> nomesIniciais = ['Gregory', 'Paola'];
  List<String> nomesDiferente = ['André', 'Natalia'];
  nomesIniciais.shuffle();
  print(nomesIniciais);
  nomesIniciais.add('Suelen');
  print(nomesIniciais);
  nomesIniciais.addAll(nomesDiferente);
  print(nomesIniciais);
  nomesIniciais.removeAt(4);
  print(nomesIniciais);
  nomesIniciais.remove('André');
  print(nomesIniciais);

  print('A lista está fazia? ${nomes.isEmpty}');
  // isNotEmpty é usado quando queremos verificar se uma lista está
  // cheia, para poder trabalhar com ela. Não podemos fazer listas nulas

  List<String> nomeAux = nomesIniciais.reversed.toList();
  print(nomeAux);

  print(nomesIniciais.any((value) =>
      value == 'Gregory')); // Usado para verificar qualquer operador lógico
  print(nomesIniciais.contains(
      'Gregory')); // Usado apenas para determinar se possui aquilo em específico

  print(nomesIniciais.length); // Determina a quantidade de valores na lista

  Set meuSet = {'Gregory', 'Zimmer'}; // Mesmos métodos das Listas
}
