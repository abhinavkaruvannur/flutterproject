import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/home.dart';

void main() {
  runApp(MaterialApp(
    home: gridview(),
  ));
}

class gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list page"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        children: [
          Card(
              color: Colors.cyan,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                        child: Image(
                      image: AssetImage('assets/images/dog.png'),
                      height: 150,
                      width: 150,
                    )),
                  ),
                  Text("Hi")
                ],
              )),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Image(
                    image: AssetImage('assets/images/dog.png'),
                    height: 150,
                    width: 150,
                  )),
                ),
                Text("Hi")
              ],
            ),
          ),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Image(
                    image: AssetImage('assets/images/dog.png'),
                    height: 150,
                    width: 150,
                  )),
                ),
                Text("Hi")
              ],
            ),
          ),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Image(
                        image: AssetImage('assets/images/dog.png'),
                        height: 150,
                        width: 150,
                      )),
                ),
                Text("Hi")
              ],
            ),
          ),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Image(
                        image: AssetImage('assets/images/dog.png'),
                        height: 150,
                        width: 150,
                      )),
                ),
                Text("Hi")
              ],
            ),
          ),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Image(
                        image: AssetImage('assets/images/dog.png'),
                        height: 150,
                        width: 150,
                      )),
                ),
                Text("Hi")
              ],
            ),
          ),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Image(
                        image: AssetImage('assets/images/dog.png'),
                        height: 150,
                        width: 150,
                      )),
                ),
                Text("Hi")
              ],
            ),
          ),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Image(
                        image: AssetImage('assets/images/dog.png'),
                        height: 150,
                        width: 150,
                      )),
                ),
                Text("Hi")
              ],
            ),
          ),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Image(
                        image: AssetImage('assets/images/dog.png'),
                        height: 150,
                        width: 150,
                      )),
                ),
                Text("Hi")
              ],
            ),
          ),
          Card(
            color: Colors.cyan,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                      child: Image(
                        image: AssetImage('assets/images/dog.png'),
                        height: 150,
                        width: 150,
                      )),
                ),
                Text("Hi")
              ],
            ),
          ),

        ],
      ),
    );
  }
}
