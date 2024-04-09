// import 'package:beyondpeace/utils/routes.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Exercisecontainer extends StatelessWidget {
  var image;

  Exercisecontainer({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 180,
        margin: EdgeInsets.all(3),
        height: 180,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                )),
          ],
        ));
  }
}
