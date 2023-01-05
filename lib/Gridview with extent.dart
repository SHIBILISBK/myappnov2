import 'package:flutter/material.dart';

class Gridview_extent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
          maxCrossAxisExtent: 200,
      children:
        List.generate(10, (index){
          return const Card(
            color: Colors.red,
            child: Center(
                child: Text("Hello",
              style: TextStyle(
                  fontSize: 10),)),
          );

        })
      ),

    );
  }

}