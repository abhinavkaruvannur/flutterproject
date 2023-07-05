import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: listcstom(),
  ));
}

class listcstom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate: SliverChildListDelegate([
        Card(
          child: ListTile(
            leading: Icon(Icons.safety_check),
            title: Text("flutter"),
            trailing: Icon(CupertinoIcons.increase_indent),
          ),
        )
      ])),
    );
  }
}
