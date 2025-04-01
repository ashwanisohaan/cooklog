import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/ui_elements/app_buttons.dart';
import 'package:my_first_flutter_app/components/ui_elements/app_textfields.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() {
    return _CalculatorState();
  }
}

class _CalculatorState extends State<Calculator> {
  String ops = "Operation Applied";
  String result = "Result will be here";
  String firstCache = "";
  bool isOpsApplied = false;
  final TextEditingController _textController1 = TextEditingController();

  void onButtonPress(String vl) {
    setState(() {
      if (_textController1.text.isNotEmpty &&
          (vl == "+" || vl == "*" || vl == "/" || vl == "-")) {
        isOpsApplied = true;
        ops = vl;
        firstCache = _textController1.text;
        _textController1.text = "";
      } else if (vl == '1' || vl == '2' || vl == '3' || vl == '4') {
        _textController1.text = vl;
      } else if (vl == "AC" || vl == "=") {
        if (vl == "=" && isOpsApplied) {
          if (ops == "+") {
            int rs = int.parse(firstCache) + int.parse(_textController1.text);
            result = "Result of $ops is $rs";
          } else if (ops == "*") {
            int rs = int.parse(firstCache) * int.parse(_textController1.text);
            result = "Result of $ops is $rs";
          }
        }

        isOpsApplied = false;
        ops = "Operation Applied";
        _textController1.text = "";
        firstCache = "";
      }
    });

    print(vl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Simple Calculator',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          leading: Icon(Icons.calculate, color: Colors.white),
          backgroundColor: const Color.fromARGB(255, 218, 44, 44),
        ),
        body: Container(
          color: const Color.fromARGB(255, 47, 61, 47),
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 16,
                children: [
                  Text(result,
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  AppTextField("Enter value", _textController1),
                  Text(ops,
                      style: TextStyle(color: Colors.orange, fontSize: 24)),
                  Text(firstCache,
                      style: TextStyle(color: Colors.white, fontSize: 24)),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('C', () {
                        onButtonPress("C");
                      }),
                      Buttons('()', () {
                        onButtonPress("()");
                      }),
                      Buttons('-', () {
                        onButtonPress("-");
                      }),
                      Buttons('/', () {
                        onButtonPress("/");
                      })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('1', () {
                        onButtonPress("1");
                      }),
                      Buttons('2', () {
                        onButtonPress("2");
                      }),
                      Buttons('3', () {
                        onButtonPress("3");
                      }),
                      Buttons('+', () {
                        onButtonPress("+");
                      })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('4', () {
                        onButtonPress("4");
                      }),
                      Buttons('5', () {
                        onButtonPress("5");
                      }),
                      Buttons('6', () {
                        onButtonPress("6");
                      }),
                      Buttons('*', () {
                        onButtonPress("*");
                      })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('7', () {
                        onButtonPress("7");
                      }),
                      Buttons('8', () {
                        onButtonPress("8");
                      }),
                      Buttons('9', () {
                        onButtonPress("9");
                      }),
                      Buttons('=', () {
                        onButtonPress("=");
                      })
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('.', () {
                        onButtonPress(".");
                      }),
                      Buttons('0', () {
                        onButtonPress("0");
                      }),
                      Buttons('00', () {
                        onButtonPress("00");
                      }),
                      Buttons('AC', () {
                        onButtonPress("AC");
                      }),
                    ],
                  ),
                  SizedBox(height: 20)
                ]),
          ),
        ));
  }
}
