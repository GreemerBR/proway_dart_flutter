void main() {
  //Comentários
  // é usado para comentar
  // ignore: todo
  // TODO: cria warnings

  // Variável
  // Começa com letra minúscula e usa camelCase
  print('Olá mundo');
  String nomeCompleto = 'Ailton';
  nomeCompleto = 'Vocês são incríveis são';

  print(nomeCompleto.toLowerCase());
  print(nomeCompleto.toUpperCase());
  print(nomeCompleto.trim()); // Tira os espaços do começo e do fim
  print(nomeCompleto.contains('o')); // Vai dar true
  List<String> retorno =
      nomeCompleto.split('3'); // se fizer split('') ele separa um por um
  print(retorno);
  print(nomeCompleto.indexOf('S'));
  print(nomeCompleto.replaceAll('são', 'sempre'));
  print(nomeCompleto.replaceFirst('são', 'sempre'));
  print(nomeCompleto.startsWith('Vo')); // Vai dar true
  print(nomeCompleto.endsWith('ão'));
  print(nomeCompleto.substring(3, 8)); // ês são i
  print(nomeCompleto.substring(9)); // ncríveis são
}
