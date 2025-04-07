import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_app/screens/calculator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialApp(
      color: Colors.amber,
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(fontFamily: "Pooper"),
      theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
        bodyMedium: GoogleFonts.oswald(textStyle: textTheme.bodyMedium),
      )),
      home: Calculator(),
    );
  }
}
