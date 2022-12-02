import 'package:flutter/material.dart';
import 'package:stack_poc/home_screen.dart';

void main() {
  runApp(StackPoc());
}

class StackPoc extends StatelessWidget {
  const StackPoc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
