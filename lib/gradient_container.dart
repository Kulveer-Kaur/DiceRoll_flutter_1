import "package:flutter/material.dart";
import "package:udemy_flutter_1/dice_roller.dart";

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

//!-----Way -1 --------
// class GradientContainer extends StatelessWidget {
//   Super key constructor
//   const GradientContainer(this.colors, {super.key}); //positional argument
//   const GradientContainer( {super.key, required this.colors});  //->Named argument
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//           gradient: LinearGradient(
//               colors: colors, begin: startAlignment, end: endAlignment)),
//       child: const Center(child: TextContainer('Hello World')),
//     );
//   }
// }
//!--------- Way-2 ---------
// class GradientContainer extends StatelessWidget {
//   const GradientContainer(this.color1, this.color2, {super.key});
//   final Color color1;
//   final Color color2;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: [color1, color2], begin: startAlignment, end: endAlignment),
//       ),
//       child: const Center(
//         child: DiceRoller(),
//       ),
//     );
//   }
// }
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors, {super.key});
  final List<Color> colors;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
