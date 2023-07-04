import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ListBuilder(),));
}
class ListBuilder extends StatelessWidget{
  var data=["appu","achu","anu","kichu"];
  var colorss=[800,700,400,300];
  var images=["assets/images/dog.png","assets/images/dog.png","assets/images/dog.png"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("list page"),),
      body: ListView.builder(
        itemCount:images.length,
        itemBuilder:(context,index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
              leading: Image(image: AssetImage(images[index]),),
                title: Text(data[index]),
                subtitle: Text(data[index]),
                trailing: Icon(Icons.call,color: Colors.blue,),
          ),
            ),
          );
        },
      ),
    );
  }

}