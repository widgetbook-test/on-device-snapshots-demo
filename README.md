# On-device Widgetbook snapshots

A minimal demo of capturing Widgetbook snapshots for components that cannot
render under `flutter test`:

- platform plugins — [`video_player`](https://pub.dev/packages/video_player) and
  [`pdfrx`](https://pub.dev/packages/pdfrx) render **blank**;
- remote content — `flutter test` answers every HTTP request with an empty 400,
  so network images fail to load.

Both render normally on a device/simulator.

## Why

`testWidgetbook` runs headlessly under `flutter test` and snapshots widgets with
`OffsetLayer.toImage`, which only rasterizes the Flutter layer tree. Widgets
backed by platform textures/views (a decoded video frame, a PDFium-rendered
page) have no engine/GPU there and come out empty.

`testWidgetbookOnDevice` runs the same scenarios on a real device/simulator via
`package:integration_test`, where the plugins render for real and
`takeScreenshot` reads back the actual composited surface.

## Pick per component

Headless stays the default; opt selected components into the on-device run with
the shared `where` filter:

- `test/widgetbook_test.dart` — headless, plain Flutter components (`LabelDemo`):

  ```dart
  testWidgetbook(config, where: (c) => c.name == 'LabelDemo');
  ```

- `integration_test/widgetbook_test.dart` — on-device, plugin components
  (`VideoDemo`, `PdfDemo`):

  ```dart
  testWidgetbookOnDevice(config, where: (c) => c.name != 'LabelDemo');
  ```

`VideoDemo`'s scenarios use `Scenario.run` to drive the `VideoPlayerController`
to a deterministic frame, and `Framed 320x240` shows a `ViewportMode`.

## Run

```sh
flutter pub get
dart run build_runner build          # generate *.stories.g.dart + components.g.dart

# Headless (fast, no device):
flutter test

# On-device (needs a booted simulator/emulator or attached device):
flutter drive \
  --driver test_driver/integration_test.dart \
  --target integration_test/widgetbook_test.dart \
  -d <device>
```

Both write `build/.widgetbook/<Component>/<Story>/<Scenario>.{png,json}` — the
layout `widgetbook cloud build push` uploads.

## Notes

- On-device capture reads the physical surface at the device's pixel ratio; a
  `ViewportMode` is cropped from the screenshot and cannot exceed the device
  screen.
- `takeScreenshot` is implemented on iOS and Android; macOS needs the
  `integration_test_macos` package.
- This demo pins `widgetbook` to the feature branch
  (`jens/wrk-20-on-device-snapshots`) via a git dependency; switch to a released
  version once the feature lands.
