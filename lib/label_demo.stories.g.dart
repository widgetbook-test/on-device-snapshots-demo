// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering, unused_element, strict_raw_type

part of 'label_demo.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

typedef _Component = Component<LabelDemo, StoryArgs<LabelDemo>>;
typedef _Scenario = LabelDemoScenario;
typedef _Defaults = LabelDemoDefaults;
typedef _Story = LabelDemoStory;
typedef _Args = LabelDemoArgs;
final LabelDemoComponent = Component<LabelDemo, StoryArgs<LabelDemo>>(
  name: component.name ?? 'LabelDemo',
  path: component.path ?? '',
  docsBuilder: component.docsBuilder,
  docComment:
      r'''A plain Flutter component (no platform plugins). It renders fine headlessly,
so it stays on the default `testWidgetbook` path in this demo.''',
  stories: [$Default..$generatedName = 'Default'],
);
typedef LabelDemoScenario = Scenario<LabelDemo, LabelDemoArgs>;
typedef LabelDemoDefaults = Defaults<LabelDemo, LabelDemoArgs>;

class LabelDemoStory extends Story<LabelDemo, LabelDemoArgs> {
  LabelDemoStory({
    super.name,
    super.designLink,
    super.setup,
    super.modes,
    LabelDemoArgs? args,
    StoryWidgetBuilder<LabelDemo, LabelDemoArgs>? builder,
    super.scenarios,
    super.excludeFromTests,
  }) : super(
         args: args ?? LabelDemoArgs(),
         builder: builder ?? (context, args) => LabelDemo(key: args.key),
       );
}

class LabelDemoArgs extends StoryArgs<LabelDemo> {
  LabelDemoArgs({Arg<Key?>? key}) : this.keyArg = $initArg('key', key, null);

  LabelDemoArgs.fixed({Key? key})
    : this.keyArg = $initArg('key', key == null ? null : Arg.fixed(key), null);

  final Arg<Key?>? keyArg;

  Key? get key => keyArg?.value;

  @override
  List<Arg?> get list => [keyArg];
}
