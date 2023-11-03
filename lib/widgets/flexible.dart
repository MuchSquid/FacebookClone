import 'package:flutter/material.dart';

class Tests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        alignment: Alignment.centerLeft,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: FlutterLogo(
                size: 100,
              ),
            ),
            Flexible(
              child: FlutterLogo(
                size: 200,
              ),
            ),
            Flexible(
              child: FlutterLogo(
                size: 300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
Flexible(
              // flex: 2,
              fit: FlexFit.tight, // ocupa todo
              child: Container(
                color: Colors.red,
                width: 50,
                height: 50,
              ),
            ),
           
            Flexible(
              fit: FlexFit.loose, // valor por defecto
              child: Container(
                width: 170,
                height: 50,
                color: Colors.blue,
              ),
            ),
            Flexible(
              fit: FlexFit.loose, // valor por defecto
              child: Container(
                width: 170,
                height: 50,
                color: Colors.yellow,
              ),
            ),
            */