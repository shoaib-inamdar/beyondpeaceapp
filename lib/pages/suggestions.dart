// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff739ccee),
        body: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Center(
                child: Container(
              margin: EdgeInsets.only(top: 40),
              child: Text(
                "Suggetions For You Based On Result",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            )),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Excercises You can Do...",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              color: Colors.white,
              height: 180,
              margin: EdgeInsets.only(top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Musics to Listen...",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              color: Colors.white,
              height: 180,
              margin: EdgeInsets.only(top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                "Doctors to Consult...",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              color: Colors.white,
              height: 180,
              margin: EdgeInsets.only(top: 10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                  Container(
                    height: 180,
                    width: 150,
                    color: Colors.blue,
                    margin: EdgeInsets.all(10),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
