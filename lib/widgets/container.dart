import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      alignment: Alignment.center,
      child: DefaultTextStyle(
        style: const TextStyle(),
        child: Container(
          // width: 200,
          // height: 200,
          margin: const EdgeInsets.only(
            bottom: 10,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            gradient: const RadialGradient(
              colors: [
                Colors.white,
                //Colors.green.withOpacity(0.2),
                Colors.green,
              ],
              stops: [
                0.6,
                //0.8,
                1,
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(
                  0.4,
                ),
                blurRadius: 20,
                offset: const Offset(10, 20),
                //spreadRadius: 10,
              ),
              BoxShadow(
                color: Colors.blue.withOpacity(
                  0.4,
                ),
                blurRadius: 20,
                offset: const Offset(-20, -10),
                //spreadRadius: 10,
              ),
            ],
            /*borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.elliptical(20, 10),
            ),*/
          ),
          //  alignment: Alignment.center, quitamos los margenes automaticos
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: const Text(
            "MuchSquid Test",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}



//? Gradiente0 linear uso
/* 
LinearGradient(
                colors: const [
                  Colors.blue,
                  Colors.red,
                  Colors.green,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [
                  0.3,
                  0.6,
                  1,
                ],
              ),
*/