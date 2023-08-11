import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/home.dart';
import 'package:flutterproject/savedpage.dart';

import 'MePage.dart';
import 'movieappui.dart';

void main(){
  runApp(MaterialApp(home: movienavigation(),
  debugShowCheckedModeBanner: false,));
}
class movienavigation  extends StatefulWidget{
  @override
  State<movienavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State< movienavigation> {
  int curretlySelected=0;
  List pages=[
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('Home'),
        ),
      ),
    ),
    MovieApp(),
    savedpage(),
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(' downloads'),
        ),
      ),
    ),
    Pageme(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.grey[700],
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.save_alt_outlined),label: "saved"),
          BottomNavigationBarItem(icon: Icon(Icons.download_sharp),label: "downloads"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "me"),

        ],
        currentIndex:curretlySelected ,
        onTap: onclicked,
      ),
      body:pages.elementAt(curretlySelected),
    );
  }

  void onclicked(int index) {
    setState(() {
      curretlySelected=index;
    });
  }
}