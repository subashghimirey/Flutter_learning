import 'package:flutter/material.dart';
import 'package:first_app/container_gradient.dart';

// import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ContainerGradient([Color.fromARGB(255, 118, 134, 162), Color.fromARGB(255, 159, 157, 91)]),
      ),
    ),
  );
}

// creating custom widgets need to extend statelesswidget
// build method must be defined whose return type is Widget
//build method overrides the built in method hence we need to use decorator

