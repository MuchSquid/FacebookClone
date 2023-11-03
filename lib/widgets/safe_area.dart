import 'package:flutter/material.dart';

class MySafeArea extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
                width: double.infinity,
                child: const SafeArea(
                  bottom: false, // contenido se ve por debajo del menu inferior
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hello"),
                      Text("Hello"),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
