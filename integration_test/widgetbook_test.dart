import 'package:on_device_snapshots_demo/widgetbook.config.dart';
import 'package:widgetbook/integration_test.dart';

/// On-device snapshots for the platform-plugin components only.
///
/// `where` opts just these components into the (slower) on-device run; the plain
/// Flutter components stay on the fast headless run in `test/widgetbook_test.dart`.
///
/// Run with a booted simulator/emulator (or attached device):
///
/// ```sh
/// flutter drive \
///   --driver test_driver/integration_test.dart \
///   --target integration_test/widgetbook_test.dart \
///   -d <device>
/// ```
void main() => testWidgetbookOnDevice(
      config,
      where: (component) => component.name != 'LabelDemo',
    );
