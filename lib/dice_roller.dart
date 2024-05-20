import "package:flutter/material.dart";
import "package:udemy_flutter_1/text_container.dart";
import "dart:math";

var randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentRoll = 2;
  rollDice() {
    setState(() {
      currentRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/images/dice-$currentRoll.png', width: 300),
      const SizedBox(height: 30),
      TextButton(
        onPressed: rollDice,
        /* style:
                TextButton.styleFrom(padding: const EdgeInsets.only(top: 30)), */
        child: const TextContainer('Roll Dice'),
      )
    ]);
  }
}
