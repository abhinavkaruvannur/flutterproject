import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: gridview(),));
}
class gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         title: Text("Grid View"),
       ),
       body: GridView(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 3,
           crossAxisSpacing: 10,
           mainAxisSpacing: 12,
         ),
         children: [
           Card(
             color: Colors.lightGreen,
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                 child: Center(
                   child: Icon(Icons.home,size: 100,),
                 ),
                 ),Text("Home")
               ],
             ),
           ),
           Card(
             color: Colors.black26,
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.email,size: 100,),
                   ),
                 ),Text("Email")
               ],
             ),
           ),
           Card(
             color: Colors.brown[700],
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.alarm,size: 100,),
                   ),
                 ),Text("Alarm")
               ],
             ),
           ),
           Card(
             color: Colors.red[900],
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.wallet,size: 100,),
                   ),
                 ),Text("Wallet")
               ],
             ),
           ),
           Card(
             color: Colors.brown[400],
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.backup,size: 100,),
                   ),
                 ),Text("Backup")
               ],
             ),
           ),
           Card(
             color: Colors.green[900],
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.book,size: 100,),
                   ),
                 ),Text("Book")
               ],
             ),
           ),
           Card(
             color: Colors.pink[900],
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.camera,size: 100,),
                   ),
                 ),Text("Camera")
               ],
             ),
           ),
           Card(
             color: Colors.brown[800],
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.person,size: 100,),
                   ),
                 ),Text("Person")
               ],
             ),
           ),
           Card(
             color: Colors.green[600],
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.print,size: 100,),
                   ),
                 ),Text("Print")
               ],
             ),
           ),
           Card(
             color: Colors.blue,
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.phone,size: 100,),
                   ),
                 ),Text("Phone")
               ],
             ),
           ),
           Card(
             color: Colors.red,
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.notes,size: 100,),
                   ),
                 ),Text("Notes")
               ],
             ),
           ),
           Card(
             color: Colors.orange,
             child: Column(
               children: [
                 Padding(padding: const EdgeInsets.all(20),
                   child: Center(
                     child: Icon(Icons.music_note,size: 100,),
                   ),
                 ),Text("Music")
               ],
             ),
           )
         ],
       ),
     );
  }

}