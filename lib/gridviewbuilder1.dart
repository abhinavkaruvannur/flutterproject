import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: gridbuilder(),
      debugShowCheckedModeBanner: false, ));
}

class gridbuilder extends StatelessWidget {
  var data = [
    "home",
    "email",
    "alarm",
    "wallet",
    "backup",
    "book",
    "camera",
    "person",
    "print",
    "phone",
    "notes",
    "music"
  ];
  var iconss = [
    Icons.home,
    Icons.email,
    Icons.alarm,
    Icons.wallet,
    Icons.backup,
    Icons.book,
    Icons.camera,
    Icons.person,
    Icons.print,
    Icons.phone,
    Icons.notes,
    Icons.music_note
  ];
  var colorss = [
    Colors.red,
    Colors.orange,
    Colors.blue,
    Colors.green,
    Colors.brown,
    Colors.pink,
    Colors.black26,
    Colors.cyan,
    Colors.amberAccent,
    Colors.amberAccent,
    Colors.lightGreen,
    Colors.brown
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   appBar: AppBar(
     title: Text("Grid View"),
   ),
     body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 3,
       mainAxisSpacing: 10,
       crossAxisSpacing: 20,
     ),
       itemBuilder: (context, index) {
       return Container(
         width: 100,
           height: 100,
         child: Card(
           color: colorss[index],
           child: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Padding(padding: const EdgeInsets.all(15),
                 child: Icon(iconss[index],size: 100,),),
                 Text(data[index]),
               ],
             ),
           ),
         ),
       );
     },
     itemCount: iconss.length,),

    );
  }

}