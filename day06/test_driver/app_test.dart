import 'package:flutter_driver/flutter_driver.dart';

import 'package:test/test.dart';

void main() {
  group('Day 06 App', () {
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('navigate between routes', () async {
      final labelFinder = find.byValueKey('label');
      final textFieldFinder = find.byValueKey('editable');
      final copyButtonFinder = find.byValueKey('copyValue');
      final navigateButtonFinder = find.byValueKey('navigateTo2');
      final appBarButtonFinder = find.text('Show');
      final closeButtonFinder = find.text('Close Modal');

      // On start the app shows first screen
      expect(await driver.getText((labelFinder)), 'Hello World');

      // We will do some changes in the app state (text field and text view)
      await driver.tap(textFieldFinder);
      await driver.enterText('New message');
      await driver.tap(copyButtonFinder);

      // When clicking the “Show New View” button it shows second screen
      await driver.tap(navigateButtonFinder);
      await driver.waitFor(closeButtonFinder);

      // When clicking “Close Modal” it returns to first screen
      await driver.tap(closeButtonFinder);
      await driver.waitFor(textFieldFinder);

      // When clicking “Show” app button it shows second screen
      await driver.tap(appBarButtonFinder);
      await driver.waitFor(closeButtonFinder);

      // When clicking the back button in the app bar it returns to the first screen
      await driver.tap(find.pageBack());
      await driver.waitFor(textFieldFinder);

      // When it returns to the first screen we will check that it preserved the state from step 2
      expect(await driver.getText(labelFinder), 'New message');
    });
  });
}
