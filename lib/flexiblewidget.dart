import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: flexibleexample(),
  debugShowCheckedModeBanner: false,));
}
class flexibleexample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("flexible app bar"),
        backgroundColor: Colors.greenAccent[800],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
          tooltip: "Menu",
        ),
      ),
      body: Center(
        child: Container(
          child: Row(
            children: [
              Flexible(
                flex: 2,
                  fit: FlexFit.tight,
                  child:Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                  )),
              SizedBox(
                width: 20,
              ),
              Flexible(
                  flex: 1,
                  fit: FlexFit.tight,
                  child:Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

}