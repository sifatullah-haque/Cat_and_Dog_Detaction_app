import 'package:flutter/material.dart';

class button extends StatelessWidget {
  final Function()? onTap;
  const button({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Center(
          child: Text(
            "Sign in",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
