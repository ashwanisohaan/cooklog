import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String txt;
  final VoidCallback onTap;
  int count=0;

  Buttons(this.txt, this.onTap);
  /*void _handlPress(){
    setState(){
      count++;
    }
    if(count==3){
      print('btn 3');
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        child: Text(txt, style: TextStyle(fontSize: 20, height: 2)),
        style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.zero))),
        onPressed: onTap);
  }
}
