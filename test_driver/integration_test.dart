import 'package:widgetbook/integration_test_driver.dart';

/// Host side of the on-device run: writes screenshots + metadata into
/// `build/.widgetbook`, the layout the Widgetbook CLI uploads.
Future<void> main() => widgetbookIntegrationDriver();
