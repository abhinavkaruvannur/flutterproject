import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: loginpage(),));
}
class loginpage extends StatelessWidget{
  @override
     Widget build(BuildContext context){
       return Scaffold(
         appBar: AppBar(title: Text("loginpage"),),
         body: Column(
           children: [
               Center(child:Padding(
                padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
                child:Text("loginpage",style: TextStyle(color: Colors.cyan),),
       )),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
             child: TextField(
               decoration: InputDecoration(
                 labelText: "username",
                 hintText: "username",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(80))),

             ),),
             Padding(
                 padding: const EdgeInsets.only(top: 30, left: 60, right: 60, bottom: 60),
             child: TextField(
               decoration: InputDecoration(
                 labelText: "password",
                 hintText: "password",
                 border: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(100))),
             ),),
             Padding(
                 padding: const EdgeInsets.all(60),
             child: ElevatedButton(onPressed: (){},child: Text("login")),
             ),
             TextButton(onPressed: (){}, child: Text("not a user ? creat a new Account"))
           ],
         ),

       );
  }

}