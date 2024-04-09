import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Doctorcom extends StatelessWidget {
  String text;
  Doctorcom({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.greenAccent),
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/ultragoku.jpg",
                height: 120,
                width: 120,
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Text(text),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Icon(Icons.call),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(Icons.chat),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(Icons.more_horiz),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
