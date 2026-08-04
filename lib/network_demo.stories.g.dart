// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering, unused_element, strict_raw_type

part of 'network_demo.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

typedef _Component = Component<NetworkDemo, StoryArgs<NetworkDemo>>;
typedef _Scenario = NetworkDemoScenario;
typedef _Defaults = NetworkDemoDefaults;
typedef _Story = NetworkDemoStory;
typedef _Args = NetworkDemoArgs;
final NetworkDemoComponent = Component<NetworkDemo, StoryArgs<NetworkDemo>>(
  name: component.name ?? 'NetworkDemo',
  path: component.path ?? '',
  docsBuilder: component.docsBuilder,
  docComment:
      r'''A component that loads a remote image. Under `flutter test` every HTTP
request is answered with an empty 400, so this renders as an error box.''',
  stories: [$Default..$generatedName = 'Default'],
);
typedef NetworkDemoScenario = Scenario<NetworkDemo, NetworkDemoArgs>;
typedef NetworkDemoDefaults = Defaults<NetworkDemo, NetworkDemoArgs>;

class NetworkDemoStory extends Story<NetworkDemo, NetworkDemoArgs> {
  NetworkDemoStory({
    super.name,
    super.designLink,
    super.setup,
    super.modes,
    NetworkDemoArgs? args,
    StoryWidgetBuilder<NetworkDemo, NetworkDemoArgs>? builder,
    super.scenarios,
    super.excludeFromTests,
  }) : super(
         args: args ?? NetworkDemoArgs(),
         builder: builder ?? (context, args) => NetworkDemo(key: args.key),
       );
}

class NetworkDemoArgs extends StoryArgs<NetworkDemo> {
  NetworkDemoArgs({Arg<Key?>? key}) : this.keyArg = $initArg('key', key, null);

  NetworkDemoArgs.fixed({Key? key})
    : this.keyArg = $initArg('key', key == null ? null : Arg.fixed(key), null);

  final Arg<Key?>? keyArg;

  Key? get key => keyArg?.value;

  @override
  List<Arg?> get list => [keyArg];
}
