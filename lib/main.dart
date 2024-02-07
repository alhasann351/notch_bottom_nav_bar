import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(6, 57, 112, 1),
        textTheme: GoogleFonts.amaranthTextTheme(),
      ),
      home: const MyHomePage(),
    );
  }
}