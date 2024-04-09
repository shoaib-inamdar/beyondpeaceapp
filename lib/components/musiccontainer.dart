// import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Musiccontainer extends StatelessWidget {
  var image;
  final Function() ontap;
  Musiccontainer({required this.image, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
          width: 180,
          margin: EdgeInsets.all(3),
          height: 200,
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
          )),
    );
  }
}
