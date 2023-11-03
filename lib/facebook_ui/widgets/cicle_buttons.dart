import 'package:flutter/material.dart';
import 'package:test_2/icons/custom_icons.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final bool showBadge;

  const CircleButton({
    Key? key,
    required this.color,
    required this.iconData,
    this.showBadge = false,
  }) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 37,
            height: 37,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 17,
            ),
          ),
          if (showBadge)
            Positioned(
              top: -3, 
              right: 0,
              child: Container(
                width: 13,
                height: 13,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(width: 3, color: Colors.white),
                  
                ),
              ),
            )
        ],
      ),
    );
  }
}
