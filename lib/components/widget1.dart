import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/music/musics_list_page.dart';

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => MusicApp(),));
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Text('Music',style: GoogleFonts.aboreto(fontSize: 40,color: Colors.yellowAccent,fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }
}
