import 'dart:math';
import 'package:flutter/material.dart';

// Globally available final data container
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // Optimization
  // final randomizer = Random();
  var diceRoll = 2;

  void rollDice() {
    setState(() {
      diceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$diceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}

// If a widget or any other object in Dart does not change throughout the lifetime of the program and 
//can be determined entirely at compile time, it can be declared as `const` for performance benefits. 
//But in this case, the `TextButton` widget does not meet those criteria.
