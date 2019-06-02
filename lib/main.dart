import 'package:flutter/material.dart';

final appName="Aldhair Made Flutter App";

final backgroundColor=Colors.grey[400];
final textDir=TextDirection.ltr;
final textStyleColor=[Colors.grey[50],Colors.grey[100],Colors.grey[200],Colors.grey[300]] ;
final textFontSize=60.0;
final appScreenText="My first app";
final appBarColor=Colors.grey[600];

List phrases=["1","2","3","4!"];

var index=0;

var phrase=phrases[index];


void main(){
  runApp(
  new MyApp()

  );
}

class MyApp extends StatefulWidget{
  MyFlutterApp createState() =>new MyFlutterApp();
}

class MyFlutterApp extends State<MyApp>{
  void _UpdateStuff(){
      index++;
      if(index>phrases.length-1) {
        index=0;
        phrase=phrases[index];
      }
      phrase=phrases[index];

    print(phrase);
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title:appName,
        home: Scaffold(
            appBar: AppBar(
              title: Text(appScreenText),
              backgroundColor: appBarColor,
              actions: <Widget>[
                IconButton(
                  icon:Icon(Icons.playlist_play),
                  tooltip: 'Change value',
                  onPressed:(){
                    setState(() {
                      _UpdateStuff();
                    });;
                  }
                )
              ],
            ),
            body:
            new   Material(
                color:backgroundColor,
                child: Center(
                  child: Text(
                    phrase,
                    textDirection: textDir,
                    style: TextStyle(color:textStyleColor[index],fontSize: textFontSize),
                  ),
                )
            )
        )
    );
  }
}