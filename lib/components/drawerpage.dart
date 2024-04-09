import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Drawerpage extends StatelessWidget {
  const Drawerpage({super.key});
  Future<void> signout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.person, size: 120)),
          ListTile(
            leading: Icon(Icons.logout),
            onTap: signout,
            title: Text("Logout"),
          )
        ],
      ),
    );
  }
}
