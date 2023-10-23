import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Enter your name"),
            TextField(
              controller: nameController,
            ),
            const Text("enter your password"),
            TextField(
              controller: passwordController,
            ),
            const SizedBox(
              height: 50.0,
            ),
          ],
        ),
        ElevatedButton(onPressed: () {}, child: const Text("login"))
      ],
    );
  }
}
