import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: listcstom(),));
}
class listcstom extends StatelessWidget{
  var name=["manu","appu","kichu","anu","achu"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return Card(
              child: Text(name[index]),
            );
          },childCount: name.length),
        )
    );
  }
}