import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/profileui.dart';

void main(){
  runApp(MaterialApp(home:HomePage(),
  debugShowCheckedModeBanner: false,
  routes: {
    'first' :(context)=>Firstpage(),
    'second':(context)=>Secondpage(),
    'third' :(context)=>profilepage(),
  },));
}
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Named Routs"),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context,'first' );
          },child: const Text("FirstPage")),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, 'second');
          },child:const Text('SecondPage')),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context,'third' );
          },child: const Text("My profile")),
        ],
      ),
    );
  }

}
class Firstpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('My First Screen',
        style: TextStyle(fontSize: 50),),
      ),
    );
  }

}
class Secondpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return const Scaffold(
       body: Center(
         child: Text('My Second Screen',
           style: TextStyle(fontSize: 50),),
       ),
     );
  }

}
