import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shramik_hith/pages/initialPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shramik Hith",
      theme: ThemeData(
        fontFamily: GoogleFonts.roboto().fontFamily,
        primaryColor: Colors.amber,
        primarySwatch: Colors.blueGrey,
      ),
      home: InitialPage(),
    );
  }
}
