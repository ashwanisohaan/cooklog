import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/screens/calculator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.amber,
      debugShowCheckedModeBanner: false,
      home: Calculator(),
    );
  }
}
