import 'dart:isolate';

void main() async {
  print('Executando o main no ISOLATE PRINCIPAL');

  final receivePort = ReceivePort();
  await Isolate.spawn(workerIsolate, receivePort.sendPort);

  print('Executando o main NO ISOLATE PRINCIPAL de novo');

  print(await receivePort.first);
}

void workerIsolate(SendPort sendPort) async {
  final resposta = await Future.delayed(
    Duration(seconds: 2),
    () => 'Conteúdo do arquivo',
  );

  Isolate.exit(sendPort, resposta);
}
