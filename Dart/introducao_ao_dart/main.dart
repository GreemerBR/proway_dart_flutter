// ignore_for_file: unused_local_variable, equal_elements_in_set

void main() {
// Variáveis e comentários
// Numbers
  num minhaIdade = 29;
  int idadeMichel = 26;
  double idadeMurilo = 18;

// Strings
  String meuNome = 'Gregory';
  String nomeNamo = "Michel";
  String nomeMano = '''Murilo
Viegas
Zimmer''';

// Booleans
  bool toVivo = true;
  bool zumbieTaVivo = false;

// Lists
  List<String> listaNomes = [
    'Paola',
    'Gregory',
    'Natalia',
    'Pitsch',
  ];

  List listaDentroDeLista = [
    'Brasil',
    ['Paraná', 'Santa Catarina', 'São Paulo'],
    'Espanha'
  ];

  print(listaNomes[2]);
  print(listaDentroDeLista[1][1]);

  // Sets
  Set<String> setNomes = {'Gregory', 'Paola', 'Gregory'};

  Set serNumeros = {1, 2, 3, 4, 5};

  print(serNumeros);

  //Maps
  Map meuMapSemTipagem = {
    'nome': 'Gregory',
    'idade': '29',
    'jogoFavorito': 'LOL',
    'linguagemFavorita': 'C#',
  };

  Map<String, dynamic> meuMapaTipado = {
    'nome': 'Gregory',
    'idade': '29',
    'jogoFavorito': 'LOL',
    'linguagemFavorita': 'C#',
  };

  // Isso também é um Map
  final result = <String, dynamic>{};
  result.addAll({'nome': 'Gregory'});
  result.addAll({'idade': '29'});

  print(meuMapaTipado['jogoFavorito']);
}
