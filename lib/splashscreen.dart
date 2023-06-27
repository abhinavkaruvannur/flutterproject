import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/home.dart';

void main(){
  runApp(MaterialApp(home: Myapp(),));

}
class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => Myappstate();

}

class Myappstate extends State {
  @override
   void initState(){
    Timer(Duration(seconds:5),() {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Center(
        child: Text("hiiii"),
      ),),
    );

  }

}
