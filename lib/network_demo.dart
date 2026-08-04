import 'package:flutter/material.dart';

/// A component that loads a remote image. Under `flutter test` every HTTP
/// request is answered with an empty 400, so this renders as an error box.
class NetworkDemo extends StatelessWidget {
  const NetworkDemo({super.key});

  static const url =
      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg';

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Center(
        child: Image.network(url, width: 300, fit: BoxFit.contain),
      ),
    );
  }
}
