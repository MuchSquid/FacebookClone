import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(
        color: Colors.black,
      ),
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(
          vertical: 55,
          horizontal: 10,
        ),
        child: Center(
          child: Container(
            color: Colors.grey,
            child: Column(
              // fixes de column depend the childs, default: max
              // mainAxisSize: MainAxisSize.min,  // Si existe un expanded se ignora
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Fila_1"),
                    Text("Fila_2"),
                  ],
                ),

                const Text(
                  "Texto Aparte",
                ),

                const Text(
                  "HOLA",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Funciona como separador en columns/row
                const Spacer(),

                Column(
                  children: [
                    Container(
                      height: 100,
                      margin: const EdgeInsets.only(top: 20),
                      color: Colors.red,
                    ),
                    Container(
                      height: 100,
                      color: Colors.blue,
                    ),
                  ],
                ),

                // Funciona como relleno para columns/rows
                Expanded(
                  flex: 2, // Para uso de 2 o mas Expandeds
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
