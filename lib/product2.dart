import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/dummydata.dart';

class Productlist extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  final productId = ModalRoute.of(context)?.settings.arguments;
  final product = dummyproducts.firstWhere((data) => data["id"] == productId);
  return Scaffold(
    appBar: AppBar(
      title: Text('Products Details'),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(product["image"]),
          Text("${product["id"].toString()}"),
          Text("${product["name"]}"),
          Text("${product["description"]}")
        ],
      ),
    ),
  );
  }

}