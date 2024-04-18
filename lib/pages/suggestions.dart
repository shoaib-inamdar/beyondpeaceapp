import 'package:flutter/cupertino.dart';
import 'package:beyondpeace/components/widget1.dart';
import 'package:beyondpeace/components/widget2.dart';
import 'package:beyondpeace/components/widget3.dart';
import 'package:beyondpeace/components/widget4.dart';
import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Suggestions extends StatefulWidget {
  final int data; //data contains the Total Score of Assessment Test
  Suggestions({required this.data});

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  List suggesttext = [
    "Your doing Excellent..❤",
    "Your doing Good..👍",
    "Need to Improve...You can do it ...👍😊",
    "Everything Will be Fine,don't push Yourself too much, Accept the Situation and Believe in Yourself ,Time Always Changes...😊👍 "
  ];
  List suggestwidgets = [Widget1(), Widget2(), Widget3(), Widget4()];
  int index = 0;
  void check() {
    if (widget.data > 35) {
      index = 0;
    } else if (35 >= widget.data && widget.data > 25) {
      index = 1;
    } else if (25 >= widget.data && widget.data > 15) {
      index = 2;
    } else if (15 >= widget.data && widget.data >= 10) {
      index = 3;
    }
  }

  @override
  void initState() {
    check();
    super.initState();
  }

  @override
  void dispose() {
    check();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffaaccdd),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Text(
                      "Here's What we would like to Suggest According to the Result",
                      style: GoogleFonts.alegreyaSans(
                          fontSize: 20,
                          color: Colors.indigo,
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  width: 200,
                  height: 100,
                  child: Text(suggesttext[index],
                      style: GoogleFonts.abel(
                          fontSize: 15,
                          color: Colors.indigoAccent,
                          fontWeight: FontWeight.bold))),
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                width: 200,
                height: 400,
                child: suggestwidgets[index],
              )
            ],
          ),
        ));
  }
}
