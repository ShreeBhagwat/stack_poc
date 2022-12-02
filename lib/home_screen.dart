import 'package:flutter/material.dart';
import 'package:stack_poc/common_scaffold.dart';
import 'package:stack_poc/second_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return CommonScaffol(
        child: GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => SecondPage()));
      },
      child: Container(
        width: 100,
        height: 100,
        color: Colors.orange,
      ),
    ));
  }
}
