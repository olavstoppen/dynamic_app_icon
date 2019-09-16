import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:dynamic_app_icon/dynamic_app_icon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  var dynamicAppIcon = DynamicAppIcon();

  @override
  void initState()
  {
    super.initState();
  }

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dynamic App Icon Plugin'),
        ),
        body: Center(
          child: Column(mainAxisSize: MainAxisSize.max,children:[
            SizedBox(height:16),
            Text('Please select an icon',style:TextStyle(fontSize:18)),
            SizedBox(height:16),
            FlatButton(child:Text("Default Icon"),onPressed:clickedDefault),
            FlatButton(child:Text("Icon 'A'"),onPressed:clickedA),
            FlatButton(child:Text("Icon 'B'"),onPressed:clickedB),
            FlatButton(child:Text("Icon 'G'"),onPressed:clickedG),
          ])
        ),
      ),
    );
  }

  void clickedDefault()
  {
    dynamicAppIcon.changeTo(iconName:null);
  }

  void clickedA()
  {
    dynamicAppIcon.changeTo(iconName:"AppIcon-Alpha");
  }

  void clickedB()
  {
    dynamicAppIcon.changeTo(iconName:"AppIcon-Beta");
  }

  void clickedG()
  {
    dynamicAppIcon.changeTo(iconName:"AppIcon-Gamma");
  }
}
