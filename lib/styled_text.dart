import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.s, {super.key});

  final String s;
  @override
  Widget build(BuildContext context) {
    return Text(
      s,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
