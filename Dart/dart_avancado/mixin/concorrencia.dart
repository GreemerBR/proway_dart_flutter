/*
  Dart é single thread, ou sejá é executado em uma linha, isso é o isolate
  Fila de microtask tem mais prioridade
  Para fazer multi thread temos que criar um novo isolate, é como se executasse-
  mos 2 aplicações ao mesmo tempo, tipo, 2 void main, que não se atrapalham

  Event loop é o responsável pelo gerenciamento das tarefas - FIFO - First in, 
  First out


  Como criar um isolate
  1° Cria a porta para escutar o isolate
  2° Cria um método de criação do isolate
  3° Isolate.spawn para criar o isolate, passamos como parâmetros a função que irá .....
  4° Passamos a escutar a porta do nosso isolate e edetuamos o print do resultado
  5° Função que processa uma lógica dentro do isolate

  Com Compute
  1° Cria o silate com o "compute" e passa a função que será executada dentro
  do isolate e o parâmetros necessários
  2° Cria a função que será 
*/