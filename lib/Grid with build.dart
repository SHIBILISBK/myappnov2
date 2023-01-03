import 'package:flutter/material.dart';

class Grid_with_builder extends StatelessWidget{
  var images = [
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg"
  ];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: GridView.builder(
         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 3),
         itemBuilder: (context, index){
           return Card(
             child: Image.asset(images[index]),
           );
         },
       itemCount: images.length,
     ),
   );
  }

}