import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_app/screens/calculator.dart';
import 'package:my_first_flutter_app/screens/login_screen.dart';

void main() => runApp(MymatSTF());

class MymatSTF extends StatefulWidget {
  MymatSTF({super.key});

  @override
  State<MymatSTF> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MymatSTF> {
  Widget screenToGo = LoginScreen(onP: () {});

  void gotoCalc() {
    setState(() {
      screenToGo = Calculator();
    });
  }

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
      home: screenToGo is LoginScreen ? LoginScreen(onP: gotoCalc) : screenToGo,
    );
  }
}
