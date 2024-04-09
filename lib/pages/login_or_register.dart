import 'package:beyondpeace/pages/login.dart';
import 'package:beyondpeace/pages/sign.dart';
import 'package:flutter/material.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  bool showlogin = true;

  void toggle() {
    setState(() {
      showlogin = !showlogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showlogin) {
      return Login(
        onTap: toggle,
      );
    } else {
      return Signin(onTap: toggle);
    }
  }
}
