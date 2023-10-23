import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
