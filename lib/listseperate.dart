import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/home.dart';

void main(){
  runApp(MaterialApp(home:listseperate(),));
}
class listseperate extends StatelessWidget{
  var data=["appu","achu","anu","kichu"];
  var colorss=[800,700,400,300];
  var images=["assets/images/dog.png","assets/images/dog.png","assets/images/dog.png","assets/images/dog.png"];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title:Text("list page"),),
       body: ListView.separated(
           itemCount: data.length,
           itemBuilder: (context,index){
         return Card(color: Colors.green[colorss[index]],
           child: ListTile(
             leading: CircleAvatar(child: Image(image: AssetImage(images[index]),)),
             title: Text(data[index]),
             trailing: Container(
               child: Column(
                 children: [
                   Text(data[index]),
                   Icon(Icons.call)
                 ],
               ),
             ),
           ),
         );
       }, separatorBuilder: (BuildContext context, int index) {
             return Divider(
               thickness: 0,
               color: Colors.red,
             );
       },
       ),
     );
  }

}