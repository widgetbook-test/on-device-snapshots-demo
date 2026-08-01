import 'package:flutter/widgets.dart';
import 'package:video_player/video_player.dart';
import 'package:widgetbook/widgetbook.dart';

import 'video_demo.dart';

part 'video_demo.stories.g.dart';

final component = ComponentMeta(path: 'plugins');

const meta = Meta(VideoDemo.new);

final $Default = _Story(
  args: _Args(),
  scenarios: [
    _Scenario(
      name: 'Start',
      run: (tester, args) => _seekTo(tester, Duration.zero),
    ),
    _Scenario(
      name: 'Midpoint',
      run: (tester, args) =>
          _seekTo(tester, const Duration(milliseconds: 1500)),
    ),
    _Scenario(
      name: 'Framed 320x240',
      modes: [
        ViewportMode(
          const ViewportData(
            name: '320x240',
            width: 320,
            height: 240,
            pixelRatio: 3,
            platform: TargetPlatform.iOS,
          ),
        ),
      ],
      run: (tester, args) =>
          _seekTo(tester, const Duration(milliseconds: 1500)),
    ),
  ],
);

/// `Scenario.run` receives a real [WidgetTester] on-device, so it can reach the
/// running `video_player` controller and seek to a deterministic frame before
/// the snapshot is taken.
Future<void> _seekTo(WidgetTester tester, Duration position) async {
  for (var i = 0; i < 40; i++) {
    await tester.pump(const Duration(milliseconds: 100));
    if (find.byType(VideoPlayer).evaluate().isNotEmpty) break;
  }

  final controller =
      tester.widget<VideoPlayer>(find.byType(VideoPlayer)).controller;
  await controller.seekTo(position);
  // While paused, iOS keeps the display link idle, so a seeked frame is not
  // pushed to the texture. Nudge playback to force the frame through, then pause.
  await controller.play();
  await tester.pump(const Duration(milliseconds: 150));
  await controller.pause();
  await tester.pump(const Duration(milliseconds: 300));
}
