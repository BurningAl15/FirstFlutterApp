import 'package:flutter/material.dart';
import'./app_Screens/firstScreen.dart';

final appName="Aldhair Made Flutter App";

final appScreenText="My first app";
final appBarColor=Colors.grey[600];


void main()=>runApp(new MyFlutterApp());


class MyFlutterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        //Take off the shitty debug bar
        debugShowCheckedModeBanner:false,
        title:appName,
        home: Scaffold(
            appBar: AppBar(
              title: Text(appScreenText),
              backgroundColor: appBarColor,

            ),
            body: FirstScreen()

        )
    );
  }
}