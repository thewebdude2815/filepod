import 'package:filepod/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FilePod());
}

class FilePod extends StatelessWidget {
  const FilePod({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(textTheme: GoogleFonts.interTextTheme()),
      debugShowCheckedModeBanner: false,
      home: const Signup(),
    );
  }
}
