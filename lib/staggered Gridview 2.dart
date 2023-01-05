import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:myappnov2/staggered%20Griddd.dart';

void main(){
  runApp(MaterialApp(home: StaggeredGridview2(),));
}
class StaggeredGridview2 extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children:  [
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child:Customchild(icondata: Icons.add, bgcolor: Colors.black,),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 2,
            mainAxisCellCount: 1,
            child: Customchild(icondata: Icons.back_hand_outlined, bgcolor: Colors.red,),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Customchild(icondata: Icons.cake_rounded, bgcolor: Colors.blue,),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child:Customchild(icondata: Icons.dark_mode_outlined, bgcolor: Colors.yellow,),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 4,
            mainAxisCellCount: 2,
            child: Customchild(icondata: Icons.eco_outlined, bgcolor: Colors.green,),
          ),
        ],
      ),
    );
  }
}