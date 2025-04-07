import 'package:flutter/material.dart';

String conCatValues(String pressed, TextEditingController tc) {
  return tc.text + pressed;
}

extension TextFields on TextEditingController {
  void toConCatMani(String vlm) {
    this.text = this.text + vlm;
  }
}
