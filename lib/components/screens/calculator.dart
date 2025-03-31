import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/components/UIElement/ElevatedButton.dart';

class Calculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            ' My Calculator',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 24,
            ),
          ),
          leading: Icon(
            Icons.calculate,
            color: Colors.amber,
          ),
          backgroundColor: const Color.fromARGB(255, 218, 44, 44),
        ),
        body: Container(
          color: const Color.fromARGB(255, 34, 36, 34),
          margin: EdgeInsets.all(8),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                //crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Buttons('0', 25)],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('C', 25),
                      Buttons('()', 25),
                      Buttons('%', 25),
                      Buttons('/', 25)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('1', 25),
                      Buttons('2', 25),
                      Buttons('3', 25),
                      Buttons('+', 25)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('4', 25),
                      Buttons('5', 25),
                      Buttons('6', 25),
                      Buttons('*', 25)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('7', 25),
                      Buttons('8', 25),
                      Buttons('9', 25),
                      Buttons('=', 25)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('.', 25),
                      Buttons('0', 25),
                      Buttons('00', 25),
                      Buttons('AC', 25),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  )
                ]),
          ),
        ));
    ;
  }
}
