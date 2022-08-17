import 'package:flutter_test/flutter_test.dart';

import 'calculator.dart';
import 'change_counter.dart';

void main() {
  late ChangeCounter changeCounter;

  late Calculator calculator;

  /* setUp utilizado para todas as vezes que utilizar o 
   changeCounter ele vir como o valor inicial dele, neste
   caso o 0 */

  setUp(() {
    changeCounter = ChangeCounter();
    calculator = Calculator();
  });

  group('Testando a classe ChangeCounter', () {
    test('Testando o valor inicial', () {
      expect(changeCounter.counter, equals(0));
    }, skip: true);

    test('Testando o increment', () {
      changeCounter.increment();
      expect(changeCounter.counter, equals(1));
    });

    test('Testando o decrement', () {
      changeCounter.decrement();
      expect(changeCounter.counter, equals(-1));
    });
  });

  group('Testando a classe Calculator', () {
    test('Testando o resultado inicial', () {
      expect(calculator.result, equals(0));
    });

    test('Testando o sum', () {
      calculator.sum();
      expect(calculator.result, equals(15));
    });

    test('Testando o sub', () {
      calculator.sub();
      expect(calculator.result, equals(5));
    });

    test('Testando o multiply', () {
      calculator.multiply();
      expect(calculator.result, equals(50));
    });

    test('Testando o divide', () {
      calculator.divide();
      expect(calculator.result, equals(2));
    });
  });
}
