import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';

class Widget4 extends StatelessWidget {
  const Widget4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Myroutes.mentalmusicroute);
            },
            child: Container(
              child: Text('Music'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Myroutes.specialeventroute);
            },
            child: Container(
              child: Text('Special Events'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Myroutes.mentalexerciseroute);
            },
            child: Container(
              child: Text('Brain Exercise'),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, Myroutes.doctorcommunicateroute);
            },
            child: Container(
              child: Text('Consult Specialist'),
            ),
          ),
        ],
      ),
    );
  }
}
