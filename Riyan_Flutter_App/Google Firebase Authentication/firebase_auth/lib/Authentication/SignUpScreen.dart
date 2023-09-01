import 'package:firebase_auth_app/Authentication/HomeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'LoginScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  registerSubmit() async {
    try {
      await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: _emailController.text.toString().trim(),
            password: _passwordController.text,
          )
          .then((value) => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => LoginScreen())));
    } catch (e) {
      print(e);
      SnackBar(
        content: Text(e.toString()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 75),
              child: Text(
                "Sign Up",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                ),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("Forgot Password")),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                onPressed: () {
                  registerSubmit();
                },
                child: Text("Sign Up"),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
