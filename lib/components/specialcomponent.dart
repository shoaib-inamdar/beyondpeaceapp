import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Specialcomponent extends StatelessWidget {
  String name, date, time, image, address;
  Specialcomponent(
      {super.key,
      required this.name,
      required this.date,
      required this.time,
      required this.image,
      required this.address});
  _launchURL() async {
    final Uri url =
        Uri.parse('https://shoaib-inamdar.github.io/beyondPeace-website/');
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 150,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff000000), width: 2),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          color: Color(0xff689AFA)),
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff000000)),
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover)),
            ),
            VerticalDivider(
              indent: 10,
              endIndent: 10,
              color: Color(0xff000000),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  name,
                  style: GoogleFonts.poppins(
                      color: Color(0xffffffff),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 2,
                  width: 200,
                  child: Divider(
                    color: Color(0xff0000000),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      date,
                      style: GoogleFonts.poppins(
                          color: Color(0xffffffff),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      time,
                      style: GoogleFonts.poppins(
                          color: Color(0xffffffff),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
                Text(
                  address,
                  style: GoogleFonts.poppins(
                      color: Color(0xffffffff),
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                InkWell(
                    onTap: _launchURL,
                    child: Container(
                        padding: EdgeInsets.only(
                            left: 10, right: 10, bottom: 2, top: 2),
                        decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Text(
                          'Click to Register',
                          style: GoogleFonts.poppins(
                              color: Color(0xffffffff), fontSize: 13),
                        )))
              ],
            )
          ],
        ),
      ),
    );
  }
}
