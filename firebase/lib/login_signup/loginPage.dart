import 'package:catanddog/login_signup/components/squre_tile.dart';
import 'package:flutter/material.dart';

import 'components/button/button.dart';
import 'components/my_textfields.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({
    super.key,
  });
  final nameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo

            const Icon(
              Icons.lock,
              size: 100.0,
            ),
            const SizedBox(
              height: 15.0,
            ),

            //welcome back, you've been missed!
            const Text(
              "Welcome back, you've been missed!!!",
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(
              height: 15.0,
            ),

            //username field
            my_textfields(
              controller: nameController,
              hintText: "username",
              obsecure: false,
            ),
            const SizedBox(
              height: 15.0,
            ),

            //password field
            my_textfields(
              controller: passwordController,
              hintText: "password",
              obsecure: true,
            ),

            //forgot password
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Text("Forgot Password?"),
                ),
              ],
            ),

            //signin button
            const SizedBox(
              height: 15.0,
            ),
            const button(),
            const SizedBox(
              height: 15.0,
            ),

            //or continue with
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(),
                  ),
                  Text("Or Continue with"),
                  Expanded(
                    child: Divider(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),

            //google + apple logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SqureTile(
                  imagePath: "assets/google.png",
                ),
                const SizedBox(
                  width: 25.0,
                ),
                SqureTile(
                  imagePath: "assets/apple.png",
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            //not a member? Register now
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?   "),
                Text(
                  "Register Now",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
