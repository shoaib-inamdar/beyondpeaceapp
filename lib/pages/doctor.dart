import 'package:beyondpeace/components/doctorcontainer.dart';
import 'package:flutter/material.dart';

class Doctorcall extends StatelessWidget {
  const Doctorcall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue),
        child: ListView(
          children: [
            Doctorcom(text: "doctor1"),
            Doctorcom(text: "doctor2"),
            Doctorcom(text: "doctor3"),
            Doctorcom(text: "doctor4"),
            Doctorcom(text: "doctor5"),
            Doctorcom(text: "doctor6"),
          ],
        ),
      ),
    );
  }
}
