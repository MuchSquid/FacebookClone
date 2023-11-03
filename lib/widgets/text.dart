import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Text(
          "Lorem Ipsum is simply dummy text "
          "of the printing and typesetting industry.",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            // decoration: TextDecoration.underline,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
