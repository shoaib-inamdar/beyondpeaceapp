import 'package:beyondpeace/components/doctorcontainer.dart';
import 'package:flutter/material.dart';

class Doctorcall extends StatelessWidget {
  const Doctorcall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color(0xffdadada)),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Doctorcom(
              text: "Dr.Nicos Kessaris",
            ),
            Doctorcom(text: "Dr.Pawel Trapszo"),
            Doctorcom(text: "Dr.Harun Thomas"),
            Doctorcom(text: "Dr.Mohsin Dani"),
            Doctorcom(text: "Dr.Andrew Smith"),
            Doctorcom(text: "Dr.Khurshid Akhtar"),
          ],
        ),
      ),
    );
  }
}
