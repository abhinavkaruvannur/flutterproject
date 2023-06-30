import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: loginpage(),));
}
class loginpage extends StatefulWidget{
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final formkey=GlobalKey<FormState>();
  bool showpass=true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("loginpage"),),
      body: Form(
        key: formkey,
        child: Column(
          children: [
            Center(child:Padding(
              padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
              child:Text("loginpage",style: TextStyle(color: Colors.black),),
            )),
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 60,right: 60),
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "username",
                    hintText: "username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(80))),
               textInputAction: TextInputAction.next,
               validator: (email){
                  if(email==null || email.isEmpty){
                    return'this feild is required';
                  }

},
              ),),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 60, right: 60, bottom: 60),
              child: TextFormField(
                obscureText: showpass,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                    prefixIcon:Icon(Icons.password) ,
                    suffixIcon:IconButton(onPressed: () {
                      setState(() {
                        if(showpass){
                          showpass=false;

                        }
                        else{
                          showpass=true;
                        }
                      });
                    },
                      icon:Icon(showpass==true ? Icons.visibility_off  :Icons.visibility),

                    ),
                    labelText: "password",
                    hintText: "password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100))),
                textInputAction: TextInputAction.done,
                validator: (password){
                  if(password!.isEmpty || password.length < 8){
                    return 'pless enter valid password';
                  }
                  else{
                    return null;
                  }
                }
              ),),
            Padding(
              padding: const EdgeInsets.all(60),
              child: ElevatedButton(onPressed: (){},child: Text("login")),
            ),
            TextButton(onPressed: (){}, child: Text("not a user ? creat a new Account"))
          ],
        ),
      ),

    );
  }
}