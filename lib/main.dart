// import 'package:beyondpeace/homepage.dart';
import 'package:beyondpeace/pages/Maps/Maps.dart';
import 'package:beyondpeace/pages/assesment.dart';
import 'package:beyondpeace/pages/auth_page.dart';
import 'package:beyondpeace/pages/doctor.dart';
// import 'package:beyondpeace/pages/entrypage.dart';
import 'package:beyondpeace/pages/filestore.dart';
import 'package:beyondpeace/pages/login_or_register.dart';
import 'package:beyondpeace/pages/mainpage.dart';
// import 'package:beyondpeace/pages/login.dart';
// import 'package:beyondpeace/pages/mentalexercise.dart';
import 'package:beyondpeace/pages/noname.dart';
import 'package:beyondpeace/pages/specialevent.dart';
import 'package:beyondpeace/pages/video/video_list.dart';
// import 'package:beyondpeace/pages/music.dart';
// import 'package:beyondpeace/pages/musicplayer.dart';
import 'package:beyondpeace/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// import 'package:beyondpeace/utils/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        // '/': (context) => Entrypage(),
        Myroutes.mainroute: (context) => Mainpage(),
        Myroutes.loginroute: (context) => LoginRegister(),
        Myroutes.mentalexerciseroute: (context) => Video_List(),
        // Myroutes.mentalmusicroute: (context) => MusicApp(),
        Myroutes.doctorcommunicateroute: (context) => Doctorcall(),
        // Myroutes.musicroute: (context) => Musicplayer()
        Myroutes.maproute: (context) => Maps(),
        Myroutes.assesmentroute: (context) => Assesmentpage(),
        Myroutes.filestoreroute: (context) => Filestorepage(),
        Myroutes.nonameroute: (context) => Nonamepage(),
        Myroutes.specialeventroute: (context) => Specialevent()
      },
      home: const Authpage(),
    );
  }
}
