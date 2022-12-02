import 'package:flutter/material.dart';

class CommonScaffol extends StatefulWidget {
  const CommonScaffol({super.key, required this.child});
  final Widget child;

  @override
  State<CommonScaffol> createState() => _CommonScaffolState();
}

class _CommonScaffolState extends State<CommonScaffol> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(top: 0, left: 0, right: 0, bottom: 0, child: widget.child),

          Positioned(
            top: 20,
            left: 10,
            right: 10,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.brown),
                child: Row(
                  children: [],
                ),
              ),
            ),
          ),
          
          Positioned(
            top: 80,
            left: 10,
            right: 10,
            child: Visibility(
              visible: isVisible,
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                height: 200,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
