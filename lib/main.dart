import 'package:flutter/material.dart';

import 'gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          const Color.fromARGB(255, 231, 12, 85),
          const Color.fromARGB(255, 40, 70, 220),
        ),
      ),
    ),
  );
}
