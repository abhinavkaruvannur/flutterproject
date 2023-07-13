import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: stackeg(),
  ));
}

class stackeg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 500,
            width: 500,
            color: Colors.red,
          ),
          Container(
            height: 300,
            width: 250,
            color: Colors.blue,
          ),
          Positioned(
              bottom: 100,
              right: 150,
              child: Container(
                height: 250,
                width: 200,
                color: Colors.green,
              ))
        ],
      ),
    );
  }
}
