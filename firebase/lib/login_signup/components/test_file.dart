import 'package:catanddog/login_signup/components/squre_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'components/button/button.dart';
import 'components/my_textfields.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> signUserMethod() async {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: nameController.text,
        password: passwordController.text,
      );
      Navigator.pop(context);
      // You can navigate to the next screen here after successful login.
    } on FirebaseAuthException catch (e) {
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        wrongEmailMessage();
      } else if (e.code == 'wrong-password') {
        wrongPassMessage();
      }
    }
  }

  void wrongEmailMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text(
            "Wrong Email",
            style: TextStyle(color: Colors.red),
          ),
        );
      },
    );
  }

  void wrongPassMessage() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          title: Text(
            "Wrong Password",
            style: TextStyle(color: Colors.red),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              const SizedBox(
                height: 50.0,
              ),
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
              button(
                onTap: signUserMethod,
              ),
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SqureTile(
                    imagePath: "assets/google.png",
                  ),
                  SizedBox(
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
      ),
    );
  }
}
