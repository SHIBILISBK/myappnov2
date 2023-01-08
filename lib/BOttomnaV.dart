import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
        home: MyBottomBar(),debugShowCheckedModeBanner: false,));
}
class MyBottomBar extends StatefulWidget{
  @override
  State<MyBottomBar> createState() => _MyBottomBarState();
  }


class _MyBottomBarState extends State<MyBottomBar>{
  
  List screen = const [
     Text("Home"),
    Text("Favorite"),
    Text("Search"),
    Text("Account")
  ];
int index = 0;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
         appBar: AppBar(
           title: const Text("BottomBar"),
         ),
     bottomNavigationBar: ClipRRect(
       borderRadius: BorderRadius.only(topLeft: Radius.circular(80),topRight: Radius.circular(80)),
       child: BottomNavigationBar(
         type: BottomNavigationBarType.shifting,
         currentIndex: index,
         onTap: (tapindex){
           setState(() {
             index = tapindex;
           });
         },
         backgroundColor: Colors.teal,
         selectedItemColor: Colors.black,
         items: const [
           BottomNavigationBarItem(
             backgroundColor: Colors.yellow,
               icon: Icon(Icons.home),label: "Home"),
           BottomNavigationBarItem(
             backgroundColor: Colors.teal,
               icon: Icon(Icons.favorite),label: "Favorite"),
           BottomNavigationBarItem(
             backgroundColor: Colors.blue,
               icon: Icon(Icons.search),label: "Search"),
           BottomNavigationBarItem(
             backgroundColor: Colors.green,
               icon: Icon(Icons.people),label: "Account"),
         ],),
     ),
     body: Center(
       child: screen[index],
     ),
   );
  }

}