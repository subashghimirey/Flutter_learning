import "package:first_app/dice_roller.dart";
import "package:flutter/material.dart";


//since we assinged value directly to the variable, it is of type Alignment

//but if we declare variable in one place and define it in another place, its type beomces dynimc
//and it can accept data of any type, hence it creates bug in the app, so we need to avoid this

const startAlignment = Alignment.bottomLeft;
const endAlignment = Alignment.topRight;

// final time = DateTime.now();

// UNDERSTANING THE DIFFERENCE OF CONST AND FINAL
//we must assign such values to final which are computed at runtime
//we must assign such values to const which are already known at compile time

class ContainerGradient extends StatelessWidget {
  //named parameters are used inside the curly braces
  const ContainerGradient(this.colors, {super.key});
  //here we could have used named argument of colors inside the curly braces as this.colors but
  //since the colors is compulsory but named arguments are optoinal we need to add required tag just
  //before it to use that way

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
