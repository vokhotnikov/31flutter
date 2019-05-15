import 'package:flutter_test/flutter_test.dart';

import 'package:day06/home_route.dart';

import 'test_util.dart';

void main() {
  testWidgets('HomeRoute contains show button', (WidgetTester tester) async {
    await tester.pumpWidget(wrapForTesting(HomeRoute()));

    final showButtonFinder = find.text("Show");
    expect(showButtonFinder, findsOneWidget);
  });

  testWidgets('HomeRoute contains controls widget', (WidgetTester tester) async {
    await tester.pumpWidget(wrapForTesting(HomeRoute()));

    final showButtonFinder = find.byType(ControlsWidget);
    expect(showButtonFinder, findsOneWidget);
  });

}