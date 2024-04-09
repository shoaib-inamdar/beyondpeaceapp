// import 'dart:ui';

// import 'dart:js_interop';

// import 'package:beyondpeace/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  final Function()? onTap;
  const Login({super.key, required this.onTap});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signuserin() async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      // Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // Navigator.pop(context);
      if (e.code == 'user-not-found') {
        wrongemail();
      } else if (e.code == 'wrong-password') {
        wrongpassword();
      }
    }

    // Navigator.pop(context);
  }

  void wrongemail() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("incorrect email"),
          );
        });
  }

  void wrongpassword() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("incorrect password"),
          );
        });
  }

  signinwithgoogle() async {
    final GoogleSignIn _googlesignin = GoogleSignIn();
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googlesignin.signIn();
      if (GoogleSignInAccount != null) {
        final GoogleSignInAuthentication? googleSignInAuthentication =
            await googleSignInAccount?.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication?.idToken,
          accessToken: googleSignInAuthentication?.accessToken,
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/brain.jpg",
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 13, horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      children: [
                        Form(
                          key: _formkey,
                          child: Column(children: [
                            TextFormField(
                              controller: emailController,
                              cursorHeight: 33,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                      CupertinoIcons.person_crop_circle_fill),
                                  labelText: "Username",
                                  contentPadding: EdgeInsets.all(13),
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Username";
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              controller: passwordController,
                              obscureText: true,
                              cursorHeight: 33,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.key),
                                  labelText: "Password",
                                  contentPadding: EdgeInsets.all(13),
                                  border: OutlineInputBorder()),
                            ),
                          ]),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: widget.onTap,
                              child: Text(
                                'sign in',
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.black,
                                foregroundColor: Colors.white),
                            onPressed: () {
                              signuserin();
                            },
                            child: const Text("login")),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(
                                thickness: .5,
                                color: Colors.grey,
                              ),
                            ),
                            Text('  or continue with  '),
                            Expanded(
                                child:
                                    Divider(thickness: .5, color: Colors.grey))
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: signinwithgoogle,
                              child: Image.asset(
                                "assets/images/google.jpg",
                                height: 60,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Image.asset("assets/images/apple.jpg", height: 60)
                          ],
                        )
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
