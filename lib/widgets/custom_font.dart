import 'package:flutter/material.dart';

class MyCustomFont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: const [
            Text(
              """
        Lorem Ipsum is simply dummy text of the printing 
        and typesetting industry. Lorem Ipsum has been 
        industry's standard dummy text ever since the 
        when an unknown printer took a galley of type
        and scrambled it to make a type specimen book. It
        survived not only five centuries, but also the 
        leap into electronic 
            """,
              style: TextStyle(
                fontFamily: "Nunito",
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
