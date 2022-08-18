// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/main.dart';

void main() {
  // Widget makeWidgetTest(Widget page) => MaterialApp(home: page);
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Semelhante ao runApp do projeto que fica dentro da lib
    await tester.pumpWidget(const MyApp());

    // Expect é usado para testar se algo está vindo conforme esperado
    /* find é do tipo Finder, usado para locarlizar o widget por meio de uma
    de suas propriedades */
    /* findSomeWidget é um Matcher, ele é usado para testar se foi encontrado
    o que estava sendo procurado */
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    /* TESTER é usado para muitas coisas, como clicar em botão, inserir textos,
    usar o pumpWidget e etc */
    await tester.tap(find.byIcon(Icons.add));
    /* o .PUMP é usado para ativar um frame depois de determinada duração,
    normalmente usado depois que fazemos uma ação que necessita esperar
    um pouquinho para o Flutter "mudar" o estado do Widget */
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  }, skip: true);
}
