import 'package:on_device_snapshots_demo/widgetbook.config.dart';
import 'package:widgetbook/test.dart';

/// Headless snapshots for the plain Flutter components only.
///
/// The platform-plugin components would render blank here, so they are routed
/// to the on-device run (`integration_test/widgetbook_test.dart`) via the same
/// `where` filter.
///
/// Run with: `flutter test`
Future<void> main() => testWidgetbook(
      config,
      where: (component) => component.name == 'LabelDemo',
    );
