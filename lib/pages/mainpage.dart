// import 'package:beyondpeace/components/drawerpage.dart';
import 'package:beyondpeace/components/drawerpage.dart';
import 'package:beyondpeace/pages/Maps/Maps.dart';
import 'package:beyondpeace/pages/assesment.dart';
import 'package:beyondpeace/pages/doctor.dart';
import 'package:beyondpeace/pages/filestore.dart';
import 'package:beyondpeace/pages/login_or_register.dart';
// import 'package:beyondpeace/pages/noname.dart';
import 'package:beyondpeace/pages/specialevent.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:beyondpeace/pages/homepage.dart';
// import 'package:beyondpeace/pages/login.dart';
// import 'package:beyondpeace/pages/mentalexercise.dart';
// import 'package:beyondpeace/pages/music.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

// ignore: must_be_immutable
class Mainpage extends StatefulWidget {
  Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  int _selectedindex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedindex = index;
    });
  }

  final _pages = [Homepage(), Doctorcall(), Filestorepage(), Specialevent()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawerpage(),
      // backgroundColor: Color(0xffffffff),
      body: _pages[_selectedindex],
      bottomNavigationBar: CurvedNavigationBar(
        // buttonBackgroundColor: Color(0xffffffff),
        color: Color(0xffFA2C6A),
        backgroundColor: Color(0xfff8cdda),
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: Color(0xffdadada),
            // fill: Color(0xffffffff),
          ),
          Icon(
            Icons.assignment_outlined,
            size: 30,
            color: Color(0xffdadada),
          ),
          Icon(
            Icons.file_copy,
            size: 30,
            color: Color(0xffdadada),
          ),
          Icon(
            Icons.event_note_outlined,
            size: 30,
            color: Color(0xffdadada),
          )
        ],
        onTap: _navigateBottomBar,
      ),
    );
  }
}


        // bottomNavigationBar: BottomNavigationBar(
        //     currentIndex: _selectedindex,
        //     onTap: _navigateBottomBar,
        //     items: [
        //       BottomNavigationBarItem(
        //           icon: Icon(
        //             Icons.home,
        //             // color: Colors.green,
        //           ),
        //           label: 'home',
        //           backgroundColor: Colors.amber),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.search), label: 'search'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.drive_file_move_outline), label: 'file'),
        //       BottomNavigationBarItem(
        //           icon: Icon(Icons.ac_unit_rounded), label: 'anything'),
        //     ])