import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blueAccent,
                Colors.green,
              ],
            ),
          ),
          child: const Center(
            child: Text("Subash are you there"),
          ),
        ),
      ),
    ),
  );
}
