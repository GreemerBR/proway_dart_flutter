/* Crie uma classe base, com alguns atributos e alguns métodos.
   Depoois, crie outras 3 classes básicas e faça herança.
   Duas delas precisarão ter um método em comum.
   
   Porém não faz sentido colocar na classe base porqe seria herdado por todas
   as classes. Ou seja, use Mixins somente nas duas classes que preciasá desse
   método em comum.
   
   
   Crie uma outra classe diferente do AppModel, em que contenha informações
   que serão usadas no projeto, então registre no setup do GetIt e use esse
   valor chamando por getIt.get<NomeDaClasse>().nomeDaVariável
*/

class Worker {
  String? name;
  int? age;

  void working() {
    print('Está trabalhando..');
  }

  void sleeping() {
    print('Está dormindo..');
  }

  void calling() {
    print('Está em ligação..');
  }

  void eating() {
    print('Está comendo..');
  }
}

class Developer extends Worker {}

class Builder extends Worker with Protecting {}

class Racer extends Worker with Protecting {}

mixin Protecting {
  void protectingItSelf() {
    print('Usando equipamentos de segurança pessoas....');
  }
}
