//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_first_flutter_app/components/ui_elements/app_buttons.dart';
import 'package:my_first_flutter_app/components/ui_elements/app_textfields.dart';
import 'package:my_first_flutter_app/components/utility.dart';
import 'package:uuid/uuid.dart';

class Calculator extends StatefulWidget {
  @override
  State<Calculator> createState() {
    return _CalculatorState();
  }
}

class _CalculatorState extends State<Calculator> {
 var num1 ;
 var num2;
 String history ='';
 String textToDisplay ='';
  String ops = "";
  String result = "";
  // String firstCache = "";
   //bool isOpsApplied = false;
  // final TextEditingController _textController1 = TextEditingController();
  
  
  

  void onButtonPress(String vl) {
    print(vl);
  // if(_textController1.text.isNotEmpty){
//textToDisplay=_textController1.text;
//_textController1.text="";
   
 if(vl=='C'){
  textToDisplay="";
  
  num1=0;
  num2=0;
  result='';
}
else if(vl=='AC'){
  textToDisplay="";
  num1=0;
  num2=0;
  result='';
  history='';
}
else if(vl=='<'){
  result=textToDisplay.substring(0,textToDisplay.length-1);
}
else if(vl=="+/-"){
  if(textToDisplay[0]!='-'){
    result='-'+textToDisplay;
  }else{
    result=textToDisplay.substring(1);
  }
}
else if(vl == "+" || vl == "*" || vl == "/" || vl == "-")
{
  try{
  num1=int.parse(textToDisplay);
  result='';
  ops=vl;
  } on FormatException catch(e){print(e.message);}
}
else if(vl=='.'){
  
  textToDisplay=vl;
  result='';
  history='';
  ops=vl;
}
else if(vl=="=")
{
  num2=int.parse(textToDisplay);
  if(ops=='+')
  {
    result=(num1+num2).toString();
    history=num1.toString()+ops.toString()+num2.toString();
  }
    if(ops=='-')
  {
    result=(num1-num2).toString();
    history=num1.toString()+ops.toString()+num2.toString();
  }
   if(ops=='*')
  {
    result=(num1*num2).toString();
    history=num1.toString()+ops.toString()+num2.toString();
  }
   if(ops=='/')
  {
    result=(num1/num2).toString();
    history=num1.toString()+ops.toString()+num2.toString();
  }}
  else {
    result=int.parse(textToDisplay+vl).toString();
  }

    setState(() {
     textToDisplay =result;
       
    });
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
                spacing: 5,
                children: [
                  Container(child: Text(history,
                  style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 48,
                  color:Colors.white)),)),
                    Container(child: Text(textToDisplay,
                  style: GoogleFonts.rubik(textStyle: TextStyle(fontSize: 48,
                  color:Colors.white)),)),

                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     // Buttons('1', callback:onButtonPress),
                      Buttons("C", (){
                        onButtonPress("C");
                      }),
                      Buttons("<", (){
                        onButtonPress("<");
                      }),
                      Buttons("-", (){
                        onButtonPress("-");
                      }),
                      Buttons("/", (){
                        onButtonPress("/");
                      })
                     
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Buttons('1', (){
                        onButtonPress('1');
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
                    crossAxisAlignment: CrossAxisAlignment.center,
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
