import 'package:flutter/material.dart';

class Btnpressd extends StatelessWidget {
  final VoidCallback pressFxn; // Function parameter

  Btnpressd({required this.pressFxn});

  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressFxn,
      child: Text('custom button'),
    );
  }
}
