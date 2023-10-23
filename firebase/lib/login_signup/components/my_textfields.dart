import 'package:flutter/material.dart';

class my_textfields extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obsecure;

  const my_textfields({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obsecure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300)),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: hintText,
        ),
        obscureText: obsecure,
      ),
    );
  }
}
