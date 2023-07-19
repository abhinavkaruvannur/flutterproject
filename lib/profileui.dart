import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(MaterialApp(
    home: profilepage(),
    debugShowCheckedModeBanner: false,
  ));
}

class profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey[200],
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/man.jpg"),
                    ),
                    borderRadius: BorderRadius.circular(100)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 70, right: 70, top: 25),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: Icon(Bootstrap.facebook),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Bootstrap.google),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Bootstrap.twitter),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Bootstrap.linkedin),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Center(
                child: ListTile(
                  title: Center(
                      child: Text(
                    "Abhinav R",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  )),
                  subtitle: Center(
                      child: Text(
                    "Developper",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 40,right: 35),
              height: MediaQuery.of(context).size.height *0.4,
              width: MediaQuery.of(context).size.width *0.4,
              child: SingleChildScrollView(
                child: Column(
                   children: [
                     ScrollContainer(
                       leadingIcon:Icons.privacy_tip,
                       listTile:'Privacy',
                     ),
                     ScrollContainer(
                       leadingIcon:Icons.history,
                       listTile:'Purchase history',
                     ),
                     ScrollContainer(
                       leadingIcon:Icons.help,
                       listTile:'Help and support',
                     ),
                     ScrollContainer(
                       leadingIcon:Icons.settings,
                       listTile:'Settings',
                     ),
                     ScrollContainer(
                       leadingIcon:Icons.person_add,
                       listTile:'Invite a friend',
                     ),
                     ScrollContainer(
                       leadingIcon:Icons.logout,
                       listTile:'Logout',
                     ),
                   ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
class ScrollContainer extends StatelessWidget{
  final IconData? leadingIcon;
  final String listTile;
  ScrollContainer({Key?key, required this.leadingIcon,required this.listTile}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(color: Colors.grey[350],borderRadius: BorderRadius.circular(100)),
      child: ListTile(
        leading: Icon(leadingIcon,color: Colors.black),
        title: Text(listTile,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
        trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
      ),
    );
  }

}
