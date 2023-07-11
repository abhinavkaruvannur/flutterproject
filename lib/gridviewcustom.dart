import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: grid_custom(),));
}
class grid_custom extends StatelessWidget{
  var images=[
    'assets/images/dog.png',
    'assets/images/dog.png',
    'assets/images/dog.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate:SliverChildBuilderDelegate(
              (context, index){
                return Card(
                  child: Image(image: AssetImage(images[index],),)
                );
              },childCount: images.length
          )),
    );
  }

}