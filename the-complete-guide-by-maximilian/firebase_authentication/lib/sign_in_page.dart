import 'package:firebase_authentication/sign_in_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final signIn = Provider.of<SignInProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign-In"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const Text("Sign-in"),
            TextField(
              controller: emailController,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  signIn.signIn(emailController.text, passwordController.text);
                },
                child: const Text("Login"),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  signIn.signUp(emailController.text, passwordController.text);
                },
                child: const Text("Register"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
