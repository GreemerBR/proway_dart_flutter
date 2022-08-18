import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integration_test_flutter/main.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  void pausando(int segundos) => sleep(Duration(seconds: segundos));

  testWidgets('Testando a home page', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    pausando(1);

    await tester.tap(find.byTooltip('Increment'));
    await tester.pumpAndSettle();

    pausando(1);

    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsNothing);

    pausando(1);

    await tester.enterText(
      find.byKey(const Key('text_field_login')),
      'gregory.v.zimmer@gmail.com',
    );
    await tester.pumpAndSettle();

    pausando(4);

    await tester.enterText(
      find.byKey(const Key('text_field_senha')),
      '@Teste123',
    );
    await tester.pumpAndSettle();
  });
}
