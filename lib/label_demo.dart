import 'package:flutter/material.dart';

/// A plain Flutter component (no platform plugins). It renders fine headlessly,
/// so it stays on the default `testWidgetbook` path in this demo.
class LabelDemo extends StatelessWidget {
  const LabelDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Colors.white,
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Hello Widgetbook',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
