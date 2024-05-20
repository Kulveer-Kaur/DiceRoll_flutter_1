import "package:flutter/material.dart";
import "package:udemy_flutter_1/gradient_container.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //Giving gradient inside container in body of scaffold
        body: GradientContainer([
          Color.fromARGB(255, 28, 1, 32),
          Color.fromARGB(255, 62, 9, 71),
          Color.fromARGB(255, 99, 4, 115),
          Color.fromARGB(255, 139, 11, 162),
          Color.fromARGB(255, 162, 22, 187)
        ]
            //---Way-2---
            /* body: GradientContainer(
              Colors.cyan, Color.fromARGB(255, 10, 101, 175))), */
            ),
      ),
    ),
  );
}
