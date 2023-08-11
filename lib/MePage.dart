
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main() {
  runApp(MaterialApp(
    home:  Pageme(),
    debugShowCheckedModeBanner: false,
  ));
}

class Pageme  extends StatefulWidget {
  @override
  State<Pageme> createState() => _PagemeState();
}

class _PagemeState extends State<Pageme> {
  int curretlySelected=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color(0xFF24223A),
        child: ListView(
          scrollDirection: Axis.vertical,
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
              child: Center(
                child: ListTile(
                  title: Center(
                      child: Text(
                        "Abhinav R",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                      )),
                  subtitle: Center(
                      child: Text(
                        "abhinavr@123gmail.com",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
                      )),
                ),
              ),
            ),
            Container(
              // margin: EdgeInsets.only(left: 40,right: 35),
              // height: MediaQuery.of(context).size.height *0.4,
              // width: MediaQuery.of(context).size.width *0.4,
              // child: SingleChildScrollView(,
                child: Column(
                  children: [
                    ScrollContainer(
                      leadingIcon:Icons.person,
                      listTile:' My Profile',
                    ),
                    ScrollContainer(
                      leadingIcon:Icons.notifications,
                      listTile:'Notification',
                    ),
                    ScrollContainer(
                      leadingIcon:Icons.history,
                      listTile:' History',
                    ),
                    ScrollContainer(
                      leadingIcon:Icons.subscriptions,
                      listTile:'My Subscription',
                    ),
                    ScrollContainer(
                      leadingIcon:Icons.settings,
                      listTile:'Settings',
                    ),
                    ScrollContainer(
                      leadingIcon:Icons.help,
                      listTile:'Help',
                    ),
                    ScrollContainer(
                      leadingIcon:Icons.logout,
                      listTile:'Logout',
                    ),
                  ],
                ),
              ),

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
    return Container(alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(top: 10,),
      decoration: BoxDecoration(color: Color(0xFF24223A) ,borderRadius: BorderRadius.circular(100)),
      child: ListTile(
        onTap: (){},
        selectedTileColor: Colors.grey[700],
        leading:CircleAvatar(backgroundColor: Colors.grey[700],
        child: Icon(leadingIcon,color: Colors.white,),),
        title: Text(listTile,style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300,color: Colors.white),),
      ),
    );
  }

}
