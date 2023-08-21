import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  var customeDiceRollNumber = 1;

  void rollDice() {
    setState(() {
      customeDiceRollNumber = randomizer.nextInt(6) + 1;
      activeDiceImage = 'assets/images/dice-$customeDiceRollNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 28),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 25)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
