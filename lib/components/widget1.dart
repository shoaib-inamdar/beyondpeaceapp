import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';

class Widget1 extends StatelessWidget {
  const Widget1({super.key});

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
        ],
      ),
    );
  }
}
