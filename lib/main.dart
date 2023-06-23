import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Myapp(),
  ));
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("myapp"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "my flutter app",
              style: TextStyle(
                  color: Colors.cyan,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 25),
            ),
            Icon(
              Icons.account_box,
              size: 50,
              color: Colors.blue,
            ),
            Image(
                image: NetworkImage(
                    "https://www.shutterstock.com/image-photo/mountains-under-mist-morning-amazing-260nw-1725825019.jpg")),
            Image(image: AssetImage("assets/images/dog.png"),height: 100,width: 50,),
          ],
        ),
      ),
    );
  }
}
