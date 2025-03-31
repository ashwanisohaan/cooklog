import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  void _Buttons() {
    print('Button pressed from parent!');
  }

  final String txt;
  final double size;
  //final String onpressed;
  //final Colors btnclr;

  Buttons(
    this.txt,
    this.size,
  );

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        child: Text(
          txt,
          style: TextStyle(fontSize: size),
        ),
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.red,
            shape: CircleBorder(),
            iconColor: Colors.white,
            minimumSize: Size(5, 4)),
        onPressed: () {
          print('Button pressed');
        });
  }
}
