import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:day06/home_route.dart';

import 'test_util.dart';

void main() {
  testWidgets('Controls show greeting by default', (WidgetTester tester) async {
    await tester.pumpWidget(wrapForTesting(ControlsWidget()));

    expect(find.text('Hello World'), findsOneWidget);
  });

  testWidgets('Controls contains "Show new view" button', (WidgetTester tester) async {
    await tester.pumpWidget(wrapForTesting(ControlsWidget()));

    expect(find.text('Show New View'), findsOneWidget);
  });

  testWidgets('Displays copy of entered text on "click me" tap"', (WidgetTester tester) async {
    await tester.pumpWidget(wrapForTesting(ControlsWidget()));

    await tester.enterText(find.byType(TextField), 'a new text!');
    await tester.tap(find.text('Click me!'));

    await tester.pump();

    expect(find.text('a new text!'), findsNWidgets(2));
  });

  testWidgets('Does not update displayed text until button is pressed', (WidgetTester tester) async {
    await tester.pumpWidget(wrapForTesting(ControlsWidget()));

    await tester.enterText(find.byType(TextField), 'a new text!');
    await tester.pump();

    expect(find.text('a new text!'), findsOneWidget);
  });
}
