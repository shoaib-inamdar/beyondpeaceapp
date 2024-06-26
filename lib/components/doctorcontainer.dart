import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class Doctorcom extends StatelessWidget {
  String text;
  Doctorcom({required this.text});

  _launchURL() async {
    final Uri url =
        Uri.parse('https://shoaib-inamdar.github.io/beyondpeacechat/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        child: Container(
          height: 150,
          margin: EdgeInsets.only(top: 5, bottom: 10, left: 10, right: 10),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffffffff), width: 3),
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(115, 255, 255, 255)),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/images/doc.jpg'))),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    height: 120,
                    child: VerticalDivider(
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    children: [
                      Text(text,
                          style: GoogleFonts.poppins(
                              fontSize: 20, fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Psychiatrist"),
                      SizedBox(
                        height: 25,
                      ),
                      Container(
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 3, bottom: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                  right: Radius.circular(20),
                                  left: Radius.circular(20)),
                              border: Border.all()),
                          child: InkWell(
                            onTap: _launchURL,
                            child: Row(
                              children: [
                                Text('click'),
                                Icon(Icons.arrow_outward),
                              ],
                            ),
                          ))
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
