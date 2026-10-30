import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:explore_mundo/main.dart';

void main() {
  testWidgets('Verificar interface do Explore Mundo', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ExploreMundoApp());

    expect(
      find.text('Explore Mundo - Agência de Viagens'),
      findsOneWidget,
    );

    expect(
      find.text('Chapada Diamantina'),
      findsOneWidget,
    );

    expect(
      find.byIcon(Icons.star),
      findsOneWidget,
    );
  });
}