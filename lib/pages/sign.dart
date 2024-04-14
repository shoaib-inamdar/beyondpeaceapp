// import 'dart:ui';

// import 'dart:js_interop';

// import 'package:beyondpeace/utils/routes.dart';
import 'package:beyondpeace/pages/services/firebaseFunctions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  final Function()? onTap;
  const Signin({super.key, required this.onTap});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formkey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpassController = TextEditingController();

  String email = "";
  String password = "";
  String fullname = "";
  static signuserup(
      String email, String password, String name, BuildContext context) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      await FirebaseAuth.instance.currentUser!.updateDisplayName(name);
      await FirebaseAuth.instance.currentUser!.updateEmail(email);
      await FirestoreServices.saveUser(name, email, userCredential.user!.uid);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Registration Successful')));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Password Provided is too weak')));
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Email Provided already Exists')));
      }
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
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
                              key: ValueKey('fullname'),
                              // controller: emailController,
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
                                  return "Enter email";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                setState(() {
                                  fullname = value!;
                                });
                              },
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              key: ValueKey('email'),
                              // controller: emailController,
                              cursorHeight: 33,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                      CupertinoIcons.person_crop_circle_fill),
                                  labelText: "User email",
                                  contentPadding: EdgeInsets.all(13),
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return "Enter email";
                                } else {
                                  return null;
                                }
                              },
                              onSaved: (value) {
                                setState(() {
                                  email = value!;
                                });
                              },
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                                key: ValueKey('password'),
                                // controller: passwordController,
                                obscureText: true,
                                cursorHeight: 33,
                                style: TextStyle(fontSize: 20),
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.key),
                                    labelText: "Password",
                                    contentPadding: EdgeInsets.all(13),
                                    border: OutlineInputBorder()),
                                validator: (value) {
                                  if (value!.length < 6) {
                                    return "please enter password of minimum length 6";
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (value) {
                                  setState(() {
                                    password = value!;
                                  });
                                }),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              // controller: confirmpassController,
                              obscureText: true,
                              cursorHeight: 33,
                              style: TextStyle(fontSize: 20),
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.key),
                                  labelText: "Confirm Password",
                                  contentPadding: EdgeInsets.all(13),
                                  border: OutlineInputBorder()),
                              validator: (value) {
                                if (value!.length < 6) {
                                  return "please enter password of minimum length 6";
                                } else {
                                  return null;
                                }
                              },
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
                                'Already have an account?',
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
                              if (_formkey.currentState!.validate()) {
                                _formkey.currentState!.save();
                                signuserup(email, password, fullname, context);
                              }
                              // signuserup();
                            },
                            child: const Text("Create account")),
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
                            Image.asset(
                              "assets/images/google.jpg",
                              height: 60,
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
