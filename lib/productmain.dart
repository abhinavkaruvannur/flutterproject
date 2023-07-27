import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/dummydata.dart';
import 'package:flutterproject/product2.dart';

void main() {
  runApp(MaterialApp(
    home: productscreen(),
    routes: {
      "secondone":(context) =>Productlist(),
    },
  ));
}

class productscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: dummyproducts.map((product) {
            return TextButton(
                onPressed: () => gotonext(context, product["id"]),
                child: Text("${product["name"]}"));
          }).toList(),
        ),
      ),
    );
  }

  void gotonext(BuildContext context, product) {
    Navigator.of(context).pushNamed("secondone", arguments: product);
  }
}
