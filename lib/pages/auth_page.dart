// import 'package:beyondpeace/pages/homepage.dart';
// import 'package:beyondpeace/pages/login.dart';
import 'package:beyondpeace/pages/login_or_register.dart';
import 'package:beyondpeace/pages/mainpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authpage extends StatelessWidget {
  const Authpage({super.key});

  // get toggle => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Mainpage();
              } else {
                return LoginRegister();
              }
            }));
  }
}
