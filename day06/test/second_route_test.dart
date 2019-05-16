import 'package:flutter_test/flutter_test.dart';

import 'package:day06/second_route.dart';

import 'test_util.dart';

void main() {
  testWidgets('Route contains close modal button', (WidgetTester tester) async {
    await tester.pumpWidget(wrapForTesting(SecondRoute()));

    expect(find.text('Close Modal'), findsOneWidget);
  });
}