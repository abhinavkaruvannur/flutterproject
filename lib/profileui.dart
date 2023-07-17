import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

void main(){
  runApp(MaterialApp(home: profilepage(),debugShowCheckedModeBanner: false,));
}
class profilepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height:double.infinity,
        width: double.infinity,
        color: Colors.grey[200],
        child: ListView(
          children: [
            Row(
              children: [
                Expanded(
                  child: Align(alignment: Alignment.topLeft,
                    child: IconButton(
                      icon:const Icon( Icons.arrow_back),onPressed: (){},
                    ),
                  ),
                ),
                Expanded(
                  child: Align(alignment: Alignment.topRight,
                    child: IconButton(
                      icon: const Icon(Icons.menu),onPressed: (){},
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15,),
            Center(
              child: Container(
                height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                  image:AssetImage("assets/images/man.jpg"),
                    ),borderRadius: BorderRadius.circular(100)
                  ),
              ),
            ),
            Container(margin: EdgeInsets.only(left: 70,right: 70,top: 25),
              child: Center(
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(icon: Icon(Bootstrap.facebook),
                    onPressed: (){},),
                    IconButton(icon: Icon(Bootstrap.google),
                    onPressed: (){},),
                    IconButton(icon: Icon(Bootstrap.twitter),onPressed: (){},),
                    IconButton(icon: Icon(Bootstrap.linkedin),
                      onPressed: (){},),
                  ],
                ),
              ),
            ),Container(
              child: Center(
                child: ListTile(
                  title: Center(child: Text("Abhinav R",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
                  subtitle: Center(child: Text("Developper",style: TextStyle(fontSize:15,fontWeight: FontWeight.bold ),)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}