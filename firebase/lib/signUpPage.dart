import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SignUpPage extends StatelessWidget {
  SignUpPage({
    super.key,
  });
  TextEditingController usernameController = TextEditingController();
  TextEditingController userPassController = TextEditingController();
  TextEditingController userMailController = TextEditingController();
  TextEditingController userNumController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Enter your name"),
            TextField(
              controller: usernameController,
            ),
            const Text("Password"),
            TextField(
              controller: userPassController,
            ),
            const Text("Email"),
            TextField(
              controller: userMailController,
            ),
            const Text("Mobile Number"),
            TextField(
              controller: userNumController,
            ),
            const SizedBox(
              height: 50.0,
            ),
          ],
        ),
        ElevatedButton(onPressed: () {}, child: Text("Sign Up"))
      ],
    );
  }
}
