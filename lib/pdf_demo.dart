import 'package:flutter/material.dart';
import 'package:pdfrx/pdfrx.dart';

/// A component backed by the `pdfrx` plugin (blank under `flutter test`,
/// rendered on a device/simulator).
class PdfDemo extends StatelessWidget {
  const PdfDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: PdfViewer.asset('assets/sample.pdf'),
    );
  }
}
