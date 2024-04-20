import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Title'),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text('Login'),
      ),
    );
  }
}
