import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        child: Center(
          child: Container(
            width: 500,
            height: 500,
            color: Colors.grey,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Only in stack
                Positioned(
                  // Positioned.fill = t b l r 0
                  // top + botton = height
                  top: 20,
                  left: 20,
                  //width: 100, // usa este w.
                  child: Container(
                    width: 150,
                    height: 150,
                    color: Colors.green,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Colors.red,
                ),
                const Text("Hi"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
