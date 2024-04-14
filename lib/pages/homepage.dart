import 'dart:ui';

import 'package:beyondpeace/components/calldata.dart';
import 'package:beyondpeace/components/exercisecontainer.dart';
// import 'package:beyondpeace/components/heading.dart';
import 'package:beyondpeace/components/musiccontainer.dart';
// import 'package:beyondpeace/pages/music/music_item.dart';
import 'package:beyondpeace/pages/music/musics_list_page.dart';
// import 'package:beyondpeace/pages/music.dart';
import 'package:beyondpeace/utils/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vertical_card_pager/vertical_card_pager.dart';
// import 'package:Google';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int activeIndex = 0;
  final List<String> titles = [
    "demo",
    "",
    "",
    "",
    "",
  ];
  final List<Widget> ewidget = [
    Ecall(
      image: "assets/images/ultragoku.jpg",
    ),
    Ecall(
      image: "assets/images/ambulance.png",
    ),
    Ecall(
      image: "assets/images/police.png",
    ),
    Ecall(
      image: "assets/images/fire.png",
    ),
    Ecall(
      image: "assets/images/women.png",
    ),
  ];
  final widgets = [
    Container(
      decoration: BoxDecoration(
          image: new DecorationImage(
              image: AssetImage("assets/images/cons.png"), fit: BoxFit.contain),
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff51b1d9)),
    ),
    Container(
      decoration: BoxDecoration(
          image: new DecorationImage(
              image: AssetImage("assets/images/exer.png"), fit: BoxFit.contain),
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffff8f50)),
    ),
    Container(
      decoration: BoxDecoration(
          image: new DecorationImage(
              image: AssetImage("assets/images/mus.png"), fit: BoxFit.contain),
          borderRadius: BorderRadius.circular(20),
          color: Color(0xffDDB078)),
    ),
    Container(
      decoration: BoxDecoration(
          image: new DecorationImage(
              image: AssetImage("assets/images/meddoc.png"),
              fit: BoxFit.contain),
          borderRadius: BorderRadius.circular(20),
          color: Color(0xff0260fd)),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffef4254), Color(0xffdf2a3b)],
              stops: [0.25, 0.75],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            color: Color(0xffdadada),
          ),
          child: ListView(
            physics: BouncingScrollPhysics(
                decelerationRate: ScrollDecelerationRate.fast),
            // padding: EdgeInsets.all(30),
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                    color: Color(0xffef4254),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0x000000).withOpacity(1),
                        offset: Offset(0, 8),
                        blurRadius: 10,
                        spreadRadius: -8,
                      )
                    ],
                    borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 20, bottom: 10),
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: new DecorationImage(
                                  image:
                                      AssetImage("assets/images/ultragoku.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      Text(
                        "BeyondPeace",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: Color(0xff000000))),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                // showDragHandle: true,
                                context: context,
                                builder: (context) {
                                  return VerticalCardPager(
                                    initialPage: 0,
                                    physics: BouncingScrollPhysics(),
                                    titles: titles,
                                    images: ewidget,
                                    align: ALIGN.CENTER,
                                    onSelectedItem: (index) {
                                      if (index == 0) {
                                        FlutterPhoneDirectCaller.callNumber(
                                            '+917841932960');
                                      }
                                      if (index == 1) {
                                        FlutterPhoneDirectCaller.callNumber(
                                            '102');
                                      }
                                      if (index == 2) {
                                        FlutterPhoneDirectCaller.callNumber(
                                            '100');
                                      }
                                      if (index == 3) {
                                        FlutterPhoneDirectCaller.callNumber(
                                            '101');
                                      }
                                      if (index == 4) {
                                        FlutterPhoneDirectCaller.callNumber(
                                            '181');
                                      }
                                    },
                                  );
                                });
                          },
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: new DecorationImage(
                                    image: AssetImage(
                                        "assets/images/emergency.png"),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  "DASHBOARD",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 45),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CarouselSlider.builder(
                      itemCount: widgets.length,
                      itemBuilder: (context, index, realIndex) {
                        var assetImage = widgets[index];
                        return buildImage(assetImage, index);
                      },
                      options: CarouselOptions(
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index),
                          enlargeStrategy: CenterPageEnlargeStrategy.scale,
                          enlargeCenterPage: true,
                          height: 200,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 2))),
                  const SizedBox(
                    height: 32,
                  ),
                  buildIndicator()
                ],
              ),
              // Heading(headtext: "BeyondPeace"),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: GestureDetector(
                  onTap: () =>
                      {Navigator.pushNamed(context, Myroutes.assesmentroute)},
                  child: Container(
                    width: 100,
                    height: 180,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                          image: AssetImage("assets/images/asses.png"),
                          fit: BoxFit.cover),
                      // color: Colors.indigo,
                      // gradient: LinearGradient(colors: [
                      //   Colors.black12,
                      //   Colors.black,
                      // ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Text(
                  'Mental Exercise',
                  style: GoogleFonts.poppins(
                      fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  height: 5,
                  thickness: 3,
                  color: Colors.black,
                ),
              ),
              //Mental Exercise Design
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        onTap: () => {
                              Navigator.pushNamed(
                                  context, Myroutes.mentalexerciseroute)
                            },
                        child: Exercisecontainer(
                            image: 'assets/images/exercise1.png')),
                    InkWell(
                        onTap: () => {
                              Navigator.pushNamed(
                                  context, Myroutes.mentalexerciseroute)
                            },
                        child: Exercisecontainer(
                            image: 'assets/images/exercise2.png')),
                    InkWell(
                        onTap: () => {
                              Navigator.pushNamed(
                                  context, Myroutes.mentalexerciseroute)
                            },
                        child: Exercisecontainer(
                            image: 'assets/images/exercise3.png')),
                    InkWell(
                      onTap: () => {
                        Navigator.pushNamed(
                            context, Myroutes.mentalexerciseroute)
                      },
                      child: Container(
                        width: 180,
                        height: 180,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: Color(0xff000000),
                        ),
                        child: Text(
                          "see more",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
              Container(
                height: 220,
                child: Row(
                  // scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 20),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                          child: InkWell(
                            onTap: () => {
                              Navigator.pushNamed(
                                  context, Myroutes.doctorcommunicateroute)
                            },
                            child: Container(
                              width: 183,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xffffffff), width: 3),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: const Color.fromARGB(115, 205, 198, 198),
                              ),
                              child: Text('Consult a Specialist',
                                  style: GoogleFonts.poppins(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w600),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 8, right: 8),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, Myroutes.specialeventroute);
                        },
                        child: Container(
                          width: 183,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xff000000),
                          ),
                          child: Text(
                            'Special  Events',
                            style: GoogleFonts.poppins(
                                fontSize: 27,
                                color: Color(0xffffffff),
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'MUSIC',
                  style: GoogleFonts.poppins(
                      fontSize: 30, fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Divider(
                  height: 5,
                  thickness: 3,
                  color: Colors.black,
                ),
              ),
              //Menta Exercise Design

              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Musiccontainer(
                      image: 'assets/images/music1.png',
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MusicApp()),
                        );
                      },
                    ),
                    Musiccontainer(
                      image: 'assets/images/music2.png',
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MusicApp()),
                        );
                      },
                    ),
                    Musiccontainer(
                      image: 'assets/images/music3.png',
                      ontap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MusicApp()),
                        );
                      },
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.pushNamed(context, Myroutes.mentalmusicroute)
                      },
                      child: Container(
                        width: 180,
                        height: 180,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          color: Color(0xff000000),
                        ),
                        child: Text(
                          "see more",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                ),
              ),
              Container(
                height: 220,
                child: Row(
                  // scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 10, left: 20, bottom: 8),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                          child: InkWell(
                            onTap: () => {
                              Navigator.pushNamed(context, Myroutes.maproute)
                            },
                            child: Container(
                              width: 183,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Color(0xff000000),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                // color: const Color.fromARGB(255, 169, 150, 150),
                              ),
                              child: Text('Nearby Hospitals',
                                  style: GoogleFonts.poppins(
                                      fontSize: 27,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffffffff)),
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 8, right: 8, bottom: 8),
                      child: InkWell(
                        onTap: () => {
                          Navigator.pushNamed(context, Myroutes.filestoreroute)
                        },
                        child: Container(
                          width: 183,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Color(0xffdadada),
                          ),
                          child: Text(
                            'Medical Reports',
                            style: GoogleFonts.poppins(
                                fontSize: 30, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImage(assetImage, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        // width: 300,
        // color: Colors.grey,
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.pushNamed(context, Myroutes.doctorcommunicateroute);
            } else if (index == 1) {
              Navigator.pushNamed(context, Myroutes.mentalexerciseroute);
            } else if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MusicApp()),
              );
            } else if (index == 3) {
              Navigator.pushNamed(context, Myroutes.filestoreroute);
            }
          },
          child: Container(
            child: assetImage,
            decoration: BoxDecoration(),

            // width: 500,

            // child: Image.asset(
            //   assetImage,
            //   fit: BoxFit.cover,
            // ),
          ),
        ),
      );

  buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widgets.length,
        effect: JumpingDotEffect(
            // paintStyle: PaintingStyle.fill,
            // strokeWidth: 1,
            spacing: 20,
            // offset: 22,r
            verticalOffset: 14.0,
            activeDotColor: Colors.black,
            dotColor: Color(0xffdadada)),
      );
}
