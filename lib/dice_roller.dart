import 'dart:math';

import 'package:flutter/material.dart';

// In order to have changes in UI of the app, we used StatefulWidet, but one thing to be noticed is that we have to execute the build function again in order to make the image appear again in the UI, otherwise even if we change the variable value, the chagne is not reflected in the UI, hence we use

// setState function inside the functino which is called when the button is pressed, inside it we change the value of the variable
//now the UI changes

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

var currentDiceRoll = 2;

var randomizer = Random();

//this is a private class which is not sent even when the file is imported in other places
class _DiceRollerState extends State<DiceRoller> {
  void rolldice() {
    

    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Center(
      //in order to have more than one widgets insidie the container, we use column and row where we can add numbers of widgets inside the children as lists

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/dice-$currentDiceRoll.png",
            width: 200,
          ),
          TextButton(
            onPressed: rolldice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 30),
                padding: const EdgeInsets.only(top: 25)),
            child: const Text("Roll dice"),
          )
        ],
      ),
    );
  }
}
