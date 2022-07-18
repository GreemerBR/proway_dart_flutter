void main() {
  Constructors constructorsNaoNomeadoRequerido = Constructors(
    'Gregory',
    29,
  ); // NÃO NOMEADO

  Constructors constructorsNomeadoOpcional = Constructors.nomeadoOpcional(
    name: 'Gregory',
  ); // NOMEADO OPCIONAL

  Constructors constructorsNomeadoRequerido = Constructors.nomeadoRequerido(
    name: 'Gregory',
    age: 29,
  ); // NOMEADO REQUERIDO

  Constructors hibrido = Constructors.hibrido(
    'Gregory',
    age: 29,
  ); // NOMEADO HIBRIDO

  Constructors constructorsHibridoComDefault = Constructors.hibridoComDefault(
    age: 29,
  ); // NOMEADO HIBRIDO COM PROPRIEDADE DEFAULT
}

class Constructors {
  String? name;
  int? age;

// Construtor NÃO NOMEADO - PARÂMETROS REQUERIDOS
  Constructors(
    this.name,
    this.age,
  );

// Construtor NOMEADO, por isso tem {} dentro dos () - PARÂMETROS NOMEADOS E OPCIONAIS
// nesta caso os parâmetros podem ser nulo, por isso precisa do ? do lado dos
//tipos das variáveis ali em cima nas propriedades da classe
  Constructors.nomeadoOpcional({
    this.name,
    this.age,
  });

// Construtor NOMEADO, por isso tem {} dentro dos () - PARÂMETROS NOMEADOS E REQUERIDOS
  Constructors.nomeadoRequerido({
    required this.name,
    required this.age,
  });

  // Construtor NOMEADO, por isso tem {} dentro dos () - PARÂMETROS HIBRIDO
  Constructors.hibrido(
    this.name, {
    required this.age,
  });

  // Construtor NOMEADO, por isso tem {} dentro dos () - PARÂMETROS HIBRIDO COM DEFAULT
  Constructors.hibridoComDefault({
    this.name = 'Gregory',
    required this.age,
  });
}
