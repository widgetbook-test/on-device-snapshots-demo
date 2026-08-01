// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering, unused_element, strict_raw_type

part of 'video_demo.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

typedef _Component = Component<VideoDemo, StoryArgs<VideoDemo>>;
typedef _Scenario = VideoDemoScenario;
typedef _Defaults = VideoDemoDefaults;
typedef _Story = VideoDemoStory;
typedef _Args = VideoDemoArgs;
final VideoDemoComponent = Component<VideoDemo, StoryArgs<VideoDemo>>(
  name: component.name ?? 'VideoDemo',
  path: component.path ?? '',
  docsBuilder: component.docsBuilder,
  docComment: r'''A component backed by the platform `video_player` plugin.

The decoded frame is delivered via a platform texture — content that stays
blank under `flutter test` and only appears on a real device/simulator.''',
  stories: [$Default..$generatedName = 'Default'],
);
typedef VideoDemoScenario = Scenario<VideoDemo, VideoDemoArgs>;
typedef VideoDemoDefaults = Defaults<VideoDemo, VideoDemoArgs>;

class VideoDemoStory extends Story<VideoDemo, VideoDemoArgs> {
  VideoDemoStory({
    super.name,
    super.designLink,
    super.setup,
    super.modes,
    VideoDemoArgs? args,
    StoryWidgetBuilder<VideoDemo, VideoDemoArgs>? builder,
    super.scenarios,
    super.excludeFromTests,
  }) : super(
         args: args ?? VideoDemoArgs(),
         builder: builder ?? (context, args) => VideoDemo(key: args.key),
       );
}

class VideoDemoArgs extends StoryArgs<VideoDemo> {
  VideoDemoArgs({Arg<Key?>? key}) : this.keyArg = $initArg('key', key, null);

  VideoDemoArgs.fixed({Key? key})
    : this.keyArg = $initArg('key', key == null ? null : Arg.fixed(key), null);

  final Arg<Key?>? keyArg;

  Key? get key => keyArg?.value;

  @override
  List<Arg?> get list => [keyArg];
}
