import 'package:flutter/material.dart';

class Customdivivder extends StatelessWidget {
  const Customdivivder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 13, right: 20),
      child: Divider(
        height: 5,
        thickness: 3,
        color: Colors.black,
      ),
    );
  }
}
