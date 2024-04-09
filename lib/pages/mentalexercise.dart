// import 'package:flutter/cupertino.dart';
// import 'dart:io';

import 'package:beyondpeace/components/exercisepagecontent.dart';
import 'package:beyondpeace/components/heading.dart';
// import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

class Mentalexercise extends StatelessWidget {
  const Mentalexercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFFdadada),
      child: ListView(
        children: [
          Heading(headtext: "Mental Exercise"),
          Exercisecontent(),
        ],
      ),
    ));
  }
}
