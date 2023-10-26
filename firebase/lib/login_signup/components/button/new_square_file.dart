import 'package:flutter/material.dart';

class SqureTile extends StatelessWidget {
  final String imagePath;
  const SqureTile({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
          color: Colors.white70),
      child: Image.asset(
        imagePath,
        width: 50.0,
      ),
    );
  }
}
