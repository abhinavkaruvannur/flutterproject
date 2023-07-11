import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: grid_extend(),
  ));
}

class grid_extend extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
          maxCrossAxisExtent: 100,
          children: List.generate(
            20,
            (index) {
              return Card(
                child: Text("Hello"),
              );
            },
          )),
    );
  }
}
