import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: expandeg(),));
}
class expandeg extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(color: Colors.green,
          padding: EdgeInsets.all(30),
          child: Text("Hii"),),
          Expanded
            (
              child: Container(padding: EdgeInsets.all(50),
            child: Text("Hello"),
            color: Colors.blue,
          )),
          Expanded(child: Container(
            padding: EdgeInsets.all(30),
            child: Text("Friends"),
            color: Colors.red,
          ))

        ],
      ),
    );
  }

}