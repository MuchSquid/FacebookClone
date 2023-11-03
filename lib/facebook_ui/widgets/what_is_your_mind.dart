import 'package:flutter/material.dart';
import 'package:test_2/facebook_ui/widgets/avatar.dart';

class WhatIsOnYourMind extends StatelessWidget {
  const WhatIsOnYourMind({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          Avatar(
            size: 50,
            assets: 'assets/users/1.jpg',
          ),
          SizedBox(
            width: 20,
          ),
          Flexible(
            child: Text(
              "What's on your mind?",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
