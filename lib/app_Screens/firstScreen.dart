import 'package:flutter/material.dart';
import 'dart:math';

final backgroundColor=Colors.grey[400];
final textDir=TextDirection.ltr;
final textStyleColor=[Colors.grey[50],Colors.grey[100],Colors.grey[200],Colors.grey[300]] ;
final textFontSize=60.0;


class FirstScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return new   Material(
        color:backgroundColor,
        child: Center(
          child: Text(
            generateLuckyNumber(),
            textDirection: textDir,
            style: TextStyle(color:textStyleColor[0],fontSize: textFontSize),
          ),
        )
    );
  }


  String generateLuckyNumber(){
    var random=Random();
    int luckyNumber=random.nextInt(10);

  return "Your lucky number is ${luckyNumber}";
  }
}