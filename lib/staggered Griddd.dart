import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

void main(){
  runApp(MaterialApp(home: StaggeredGriddd(),));
}
class StaggeredGriddd extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  StaggeredGridView.count(
        crossAxisCount: 4,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        staggeredTiles: const [
          StaggeredTile.count(2, 2),
          StaggeredTile.count(2, 1),
          StaggeredTile.count(2, 3),
          StaggeredTile.count(2, 5),
          StaggeredTile.count(2, 4),
          StaggeredTile.count(2, 8),
          StaggeredTile.count(2, 6),
          StaggeredTile.count(2, 7)
        ],
        children: [
          Customchild(icondata: Icons.add, bgcolor: Colors.black,),
          Customchild(icondata: Icons.cabin, bgcolor: Colors.lime,),
          Customchild(icondata: Icons.safety_check, bgcolor: Colors.green,),
          Customchild(icondata: Icons.back_hand_outlined, bgcolor: Colors.yellow,),
          Customchild(icondata: Icons.car_crash, bgcolor: Colors.purple,),
          Customchild(icondata: Icons.icecream_outlined, bgcolor: Colors.brown,),
          Customchild(icondata: Icons.face_retouching_natural, bgcolor: Colors.red,),
          Customchild(icondata: Icons.g_translate, bgcolor: Colors.blue,)
        ]
      )
    );
  }


}

class Customchild extends StatelessWidget{

  final Color? bgcolor;
  final IconData icondata;
//  VoidCallback onpress;
  Customchild({required this.bgcolor,required this.icondata});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgcolor,
      child: Icon(icondata,color: Colors.white ,),
    );
  }

}