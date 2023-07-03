import 'package:flutter/material.dart';
import 'package:flutterproject/loginpage.dart';

void main(){
  runApp(MaterialApp(home: signuppage(),));
}
class signuppage extends StatefulWidget{
  @override
  State<signuppage> createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  final formkey=GlobalKey<FormState>();
  final TextEditingController pass =TextEditingController();
  final TextEditingController conf =TextEditingController();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Sign Up"),),
     body: Form(
       key: formkey,
       child: Column(
         children: [
           Center(child: Padding(
             padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
             child: Text("sign up",style: TextStyle(color: Colors.black),),
           ),),
           Padding(
               padding:  const EdgeInsets.only(top: 30,left: 60,right: 60),
           child: TextFormField(
             validator: (email){
               if(email!.isEmpty){
                 return 'no value';
               }else
                 {
                   return null;
                 }
             },
             decoration: InputDecoration(
               prefixIcon: Icon(Icons.mail),
               labelText: "email id",
               hintText: "email id",
               border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(80))),
             textInputAction: TextInputAction.next,
           ),
           ),
           Padding(padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
           child: TextFormField(
             controller: pass,
             validator: (pass1){
               if(pass1!.isEmpty || pass1.length < 6){
                 return 'pass not valid';
               }else{
                 return null;
               }
             },
            obscureText: true,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.password),
              labelText: "password",
              hintText: "password",
              border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(100))),
         textInputAction: TextInputAction.next,
    ),
           ),
           Padding(padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
             child: TextFormField(
               controller: conf,
               validator: (confirmpass){
                 if(confirmpass!.isEmpty){
                   return 'value empty';
                 }if(confirmpass!=pass.text){
                   return 'does not match';

                 }else{
                   return null;
                 }
               },
               obscureText: true,
               obscuringCharacter: "*",
               decoration: InputDecoration(
                   prefixIcon: Icon(Icons.password),
                   labelText: "confirm text",
                   hintText: "confirm text",
                   border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(100))),
               textInputAction: TextInputAction.done,
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: ElevatedButton(onPressed: (){
               final checkvalues = formkey.currentState!.validate();
               if(checkvalues){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> loginpage()));
               }
               else{
                 return null;
               }
             }, child: Text("sign up")),
           )
         ],
       ),
     ),
   );
  }
}