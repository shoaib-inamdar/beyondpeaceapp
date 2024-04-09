import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Heading extends StatelessWidget {
  Heading({required this.headtext});
  var headtext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        alignment: Alignment.center,
        height: 150,
        child: Text(headtext,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700)),
        decoration: BoxDecoration(
            color: Color(0xFFC5C6CB),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
      ),
    );
  }
}
