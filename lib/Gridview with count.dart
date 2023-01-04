import 'package:flutter/material.dart';

class Grid_count extends StatelessWidget {
  var images = [
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg",
    "assets/icons/sbk1.jpg",
    "assets/icons/sbk2.jpg"
  ];

  var colors = [
    Colors.yellow,
    Colors.green,
    Colors.black87,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.black87,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.black87,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.green,
    Colors.black87,
    Colors.red,
    Colors.blue
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 5,
          children: List.generate(20, (index) {
            return Card(
              color: colors[index],
              child: Image(
                image: AssetImage(images[index]),
              ),
            );
          })),
    );
  }
}
