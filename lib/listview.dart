import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/home.dart';

void main(){
  runApp(MaterialApp(home:listpage(),));
}

class listpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("list page"),),
      body: ListView(
        children: [
          Card(color: Colors.blue,
            child: ListTile(
              leading: Icon(Icons.person),
              title: Text("abhinav"),
              trailing: Icon(Icons.call),
            ),
          ),
          Card(color: Colors.red,
            child: ListTile(
             leading: Icon(Icons.person),
             title: Text("abhi"),
             trailing: Icon(Icons.call),
            )
      ),
          Card(color: Colors.green,
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text("abhinav"),
                trailing: Icon(Icons.call),
              )
          ),
        ],
      ),
    );
  }

}