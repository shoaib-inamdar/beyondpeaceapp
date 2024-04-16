// import 'package:flutter/cupertino.dart';
import 'package:beyondpeace/components/widget1.dart';
import 'package:beyondpeace/components/widget2.dart';
import 'package:beyondpeace/components/widget3.dart';
import 'package:beyondpeace/components/widget4.dart';
import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatefulWidget {
  final int data; //data contains the Total Score of Assessment Test
  Suggestions({required this.data});

  @override
  State<Suggestions> createState() => _SuggestionsState();
}

class _SuggestionsState extends State<Suggestions> {
  List suggesttext = ["", "", "", ""];
  List suggestwidgets = [Widget1(), Widget2(), Widget3(), Widget4()];
  int index = 0;
  void check() {
    if (widget.data > 30) {
      index = 0;
    } else if (30 > widget.data && widget.data > 20) {
      index = 1;
    } else if (20 > widget.data && widget.data > 10) {
      index = 2;
    } else if (10 > widget.data && widget.data > 0) {
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
        backgroundColor: Color(0xffdadada),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                    "Here's What we would like to Suggest According to the Result"),
              ),
              Container(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  width: 200,
                  height: 100,
                  child: Text(suggesttext[index])),
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
