import 'package:flutter/material.dart';

class MyListViewBuilder extends StatelessWidget {
  final names = [
    "Darwin",
    "Lulu",
    "Pepe",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [ 
          Expanded(
            flex: 2,
            child: ListView.separated(
              itemBuilder: (_, int index) {
                final name = names[index];
                return Container(
                  color: Colors.blueGrey,
                  height: 100,
                  alignment: Alignment.center,
                  child: Text("$name ${name.length}"),
                );
              },
              itemCount: 3,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 100,
                  margin: const EdgeInsets.all(5.0),
                  color: Colors.green,
                );
              },
              itemCount: 1000,
              separatorBuilder: (_, int index) {
                return const Divider(
                  height: 5,
                  thickness: 3,
                  indent: 5,
                  endIndent: 5,
                  color: Colors.black,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
