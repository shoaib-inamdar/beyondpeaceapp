// import 'package:flutter/cupertino.dart';
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
  var index;
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
            children: [
              Container(
                child: Text(
                    "Here's What we would like to Suggest According to the Result"),
              ),
              Container(child: Text(suggesttext[index])),
              Container(
                child: suggestwidgets[index],
              )
            ],
          ),
        ));
  }
}

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

class Widget2 extends StatelessWidget {
  const Widget2({super.key});

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
        ],
      ),
    );
  }
}

class Widget3 extends StatelessWidget {
  const Widget3({super.key});

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
        ],
      ),
    );
  }
}

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
