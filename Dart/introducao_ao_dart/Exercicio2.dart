void main() {
  // Crie uma lista de Sets, e os itens desses Sets são Maps de i item

  Map<String, String> mapaNomes = {'nome': 'Gregory'};

  Map<String, int> mapaIdade = {'idade': 29};

  Set<Map> meuSet = {mapaNomes, mapaIdade, mapaIdade};

  List<Map> minhaList = [mapaNomes, mapaIdade, mapaIdade];

  print(meuSet);
  print(minhaList);
}
