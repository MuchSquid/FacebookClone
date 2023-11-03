import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  // Variables
  final double size;
  final String assets;
  final double borderWidth;
  // Contructor
  const Avatar({
    Key? key,
    required this.size,
    required this.assets,
    this.borderWidth = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: borderWidth,
          color: Colors.white,
        ),
        image: DecorationImage(
          image: AssetImage(assets),
        ),
      ),
    );
  }
}
