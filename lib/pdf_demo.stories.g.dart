// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering, unused_element, strict_raw_type

part of 'pdf_demo.stories.dart';

// **************************************************************************
// StoryGenerator
// **************************************************************************

typedef _Component = Component<PdfDemo, StoryArgs<PdfDemo>>;
typedef _Scenario = PdfDemoScenario;
typedef _Defaults = PdfDemoDefaults;
typedef _Story = PdfDemoStory;
typedef _Args = PdfDemoArgs;
final PdfDemoComponent = Component<PdfDemo, StoryArgs<PdfDemo>>(
  name: component.name ?? 'PdfDemo',
  path: component.path ?? '',
  docsBuilder: component.docsBuilder,
  docComment: r'''A component backed by the `pdfrx` plugin (PDFium).

The page is rasterized natively and painted onto the Flutter canvas — blank
under `flutter test`, rendered on a real device/simulator.''',
  stories: [$Default..$generatedName = 'Default'],
);
typedef PdfDemoScenario = Scenario<PdfDemo, PdfDemoArgs>;
typedef PdfDemoDefaults = Defaults<PdfDemo, PdfDemoArgs>;

class PdfDemoStory extends Story<PdfDemo, PdfDemoArgs> {
  PdfDemoStory({
    super.name,
    super.designLink,
    super.setup,
    super.modes,
    PdfDemoArgs? args,
    StoryWidgetBuilder<PdfDemo, PdfDemoArgs>? builder,
    super.scenarios,
    super.excludeFromTests,
  }) : super(
         args: args ?? PdfDemoArgs(),
         builder: builder ?? (context, args) => PdfDemo(key: args.key),
       );
}

class PdfDemoArgs extends StoryArgs<PdfDemo> {
  PdfDemoArgs({Arg<Key?>? key}) : this.keyArg = $initArg('key', key, null);

  PdfDemoArgs.fixed({Key? key})
    : this.keyArg = $initArg('key', key == null ? null : Arg.fixed(key), null);

  final Arg<Key?>? keyArg;

  Key? get key => keyArg?.value;

  @override
  List<Arg?> get list => [keyArg];
}
