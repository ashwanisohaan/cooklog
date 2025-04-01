import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(this.txt, this.tec, {super.key});

  final String txt;
  final TextEditingController tec;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      controller: tec,
      decoration: InputDecoration(
          fillColor: Colors.white,
          labelText: txt,
          labelStyle: TextStyle(
            fontSize: 16,
            color: const Color.fromARGB(255, 204, 195, 195),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }
}
