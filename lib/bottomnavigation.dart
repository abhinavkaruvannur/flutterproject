import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/profileui.dart';

void main(){
  runApp(MaterialApp(home: BottomNavigation(),));
}
class BottomNavigation extends StatefulWidget{
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
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
    profilepage(),
    // Center(
    //   child: Card(
    //     child: Padding(
    //       padding: const EdgeInsets.all(8),
    //       child: Text('account'),
    //     ),
    //   ),
    // ),
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text('search'),
        ),
      ),
    ),
    Center(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Text(' settings'),
        ),
      ),
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("bottom"),),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.yellow,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.green,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "account"),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: " search"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings"),

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