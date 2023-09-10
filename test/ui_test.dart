import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing_study/ui/main_page.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Main page testing', (widgetTester) async {
    WidgetsFlutterBinding.ensureInitialized();
    await widgetTester.pumpWidget(
      const MaterialApp(
        home: MainPage(title: "T"),
      ),
    );

    final circularFinder = find.byType(CircularProgressIndicator);

    expect(circularFinder, findsWidgets);
  });
}
