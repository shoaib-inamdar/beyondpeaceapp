import 'package:flutter/material.dart';
// import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

// ignore: must_be_immutable
class Ecall extends StatelessWidget {
  // var number;
  var image;
  Ecall({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 10,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffffffff), width: 3),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          colors: [Color(0xff6dd5ed), Color(0xfff8cdda)],
          stops: [0.25, 0.75],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
