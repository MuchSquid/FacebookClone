import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // misma altura de inicio
          crossAxisAlignment: CrossAxisAlignment.end,
          // espacio minimo entre widgets
          // mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
            ),
            Container(
              height: 100,
              width: 50,
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
