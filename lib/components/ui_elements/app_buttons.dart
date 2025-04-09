import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String txt;
  final VoidCallback onTap;
  
  
  
  

  Buttons(this.txt, this.onTap);
  

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        child: Text(txt,
            style: TextStyle(fontSize: 20, height: 2, fontFamily: "Pooper")),
        style: ElevatedButton.styleFrom(
            foregroundColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero))),
        onPressed:onTap);
  }
}
