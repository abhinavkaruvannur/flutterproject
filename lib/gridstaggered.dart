import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/home.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main() {
  runApp(MaterialApp(
    home: grid_staggered(),
  ));
}

class grid_staggered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        staggeredTiles: [
          StaggeredTile.count(2, 3),
          StaggeredTile.count(1, 2),
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(4 , 2),
        ],
        children: [
          customchild(icondataa: Icons.lock_clock, bgcolor: Colors.red),
          customchild(icondataa: Icons.camera, bgcolor: Colors.blue),
          customchild(icondataa: Icons.abc, bgcolor: Colors.yellow),
          customchild(icondataa: Icons.call, bgcolor: Colors.green),
          customchild(icondataa: Icons.home, bgcolor: Colors.brown),
        ],
      ),
    );
  }
}

class customchild extends StatelessWidget {
  final Color? bgcolor;
  final IconData icondataa;

  customchild({this.bgcolor, required this.icondataa});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(
        icondataa,
        color: Colors.white,
        size: 100,
      ),
    );
  }
}
