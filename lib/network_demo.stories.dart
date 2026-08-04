import 'package:flutter/widgets.dart';
import 'package:widgetbook/widgetbook.dart';

import 'network_demo.dart';

part 'network_demo.stories.g.dart';

final component = ComponentMeta(path: 'plugins');

const meta = Meta(NetworkDemo.new);

final $Default = _Story(
  args: _Args(),
  scenarios: [
    _Scenario(name: 'Remote image', run: (tester, args) => _load(tester)),
  ],
);

/// Give the real HTTP request time to complete and decode.
Future<void> _load(WidgetTester tester) async {
  for (var i = 0; i < 30; i++) {
    await tester.pump(const Duration(milliseconds: 200));
  }
}
