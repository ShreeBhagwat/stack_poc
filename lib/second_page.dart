import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:stack_poc/common_scaffold.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonScaffol(
        child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return Container(
                width:double.infinity,
                height: 50,
                child: Center(child: Text(index.toString()),),
              );
            }));
  }
}
