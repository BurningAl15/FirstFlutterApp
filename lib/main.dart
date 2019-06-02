import 'package:flutter/material.dart';

final appName="Aldhair Made Flutter App";

final backgroundColor=Colors.lightBlue[200];
final textDir=TextDirection.rtl;
final textStyleColor=Colors.grey[200];
final textFontSize=60.0;

final appScreenText="My first app";

void main(){
  runApp(

    new MaterialApp(
      title:appName,
      home: Scaffold(
        appBar: AppBar(title: Text(appScreenText),),
        body:
        Material(
            color:backgroundColor,
            child: Center(
              child: Text(
                "Aldhair",
                textDirection: textDir,
                style: TextStyle(color:textStyleColor,fontSize: textFontSize),
              ),
            )
        )
      )
      )


  );
}
