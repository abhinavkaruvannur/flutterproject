import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drawereg(),
  ));
}

class drawereg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Drawer(
            child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("abhinav"),
              accountEmail: Text("abhinav@123.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/dog.png"),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                      fit: BoxFit.fill)),
              otherAccountsPictures: [
                CircleAvatar(backgroundImage:AssetImage("assets/images/tree.jpg") ,),
                CircleAvatar(backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/19/08/32/marguerite-729510_1280.jpg"),)
              ],
            ),
            ListTile(
              trailing: Icon(Icons.home),
              title: Text("Home"),
              leading: Icon(Icons.safety_check),
            ),
            ListTile(
              trailing: Icon(Icons.icecream),
              title: Text("about"),
              leading: Icon(Icons.safety_check),
            ),
            ListTile(
              trailing: Icon(Icons.help),
              title: Text("help"),
              leading: Icon(Icons.safety_check),
            )
          ],
        )),
      ),
    );
  }
}
