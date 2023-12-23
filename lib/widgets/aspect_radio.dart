import 'package:flutter/material.dart';

class MyAspectRadio extends StatelessWidget {
  const MyAspectRadio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 1 / 2,
          child: Image.network(
            'https://picsum.photos/250?image=9',
          ),
        ),
      ),
    );
  }
}
