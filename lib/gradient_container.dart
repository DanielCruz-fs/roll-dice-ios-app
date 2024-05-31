import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color colorOne;
  final Color colorTwo;

  const GradientContainer(this.colorOne, this.colorTwo, {super.key});

  // another way of creating an object through constructor
  const GradientContainer.purple({super.key})
      : colorOne = Colors.deepPurple,
        colorTwo = Colors.indigo;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorOne, colorTwo],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   final List<Color> colors;

//   const GradientContainer({super.key, required this.colors});

//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('hi deby I am Daniel'),
//       ),
//     );
//   }
// }