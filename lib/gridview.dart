import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridvieww extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20
      ),
      children: const [
        Image(image: AssetImage("assets/icons/sbk2.jpg")),
        Image(image: AssetImage("assets/icons/sbk1.jpg")),
        Image(image: AssetImage("assets/icons/sbk2.jpg")),
        Image(image: AssetImage("assets/icons/sbk1.jpg")),
        Image(image: AssetImage("assets/icons/sbk2.jpg")),
        Image(image: AssetImage("assets/icons/sbk1.jpg")),
        Image(image: AssetImage("assets/icons/sbk2.jpg")),
        Image(image: AssetImage("assets/icons/sbk1.jpg")),

      ],),
    );
  }
  
}