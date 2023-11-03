import 'dart:math';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_2/icons/custom_icons.dart';

class MyIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // CupertinoActivityIndicator(),
              //CupertinoSearchTextField(),
              Icon(
                // CupertinoIcons.settings
                CustomIcons.messenger,
                size: 50,
                color: Color.fromARGB(255, 74, 96, 135),
                semanticLabel: 'IconReloj',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
