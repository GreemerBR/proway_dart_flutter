import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widget_test/home_page.dart';
import 'package:widget_test/initial_page.dart';

void main() {
  testWidgets(
    'Verificar se existe o título',
    (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));

      await tester.tap(find.text('Salvar'));
      await tester.tap(find.byKey(const ValueKey('elevated_buttom_salvar')));
      await tester.tap(find.byKey(const ValueKey('elevated_buttom_salvar_duplicated')));
      await tester.tap(find.byKey(const ValueKey('inkwell_buttom_consultar')));
      await tester.tap(find.byKey(const ValueKey('material_buttom_editar')));
      await tester.tap(find.byKey(const ValueKey('text_buttom_excluir')));
    },
  );

  testWidgets('Verificar se consegue ir para outra tela', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    tester.printToConsole('Clicando no botão que irá para outra tela');
    await tester.tap(find.byKey(const ValueKey('icon_button_next_page')));

    tester.printToConsole('Esperando o Flutter terminar de renderizar tudo');
    await tester.pumpAndSettle();

    tester.printToConsole('Verificando se chegou na segunda página');
    expect(find.byType(InitialPage), findsOneWidget);
  });
}
