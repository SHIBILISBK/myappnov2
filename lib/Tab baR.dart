import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Listpage.dart';
import 'list with bulder.dart';



void main(){
  runApp(MaterialApp(
    home: Mytab(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSwatch().copyWith(primary: const Color(0xff2e7d32))
    ),
    debugShowCheckedModeBanner: false,));
}

class Mytab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4 ,
     child: Scaffold(
      appBar: AppBar(
        title: const Text("Whatsapp"),
        actions:  [
          const Icon(Icons.camera_alt_outlined),
          const SizedBox(width: 20,),
          const Icon(Icons.search),
          PopupMenuButton(itemBuilder: (context){
            return[
              const PopupMenuItem(child: Text("New group")),
              const PopupMenuItem(child: Text("New broadcast")),
              const PopupMenuItem(child: Text("Linked devices")),
              const PopupMenuItem(child: Text("Starred messages")),
              const PopupMenuItem(child: Text("Payments")),
              const PopupMenuItem(child: Text("Settings")),
            ];
          })

        ],
        bottom:  TabBar(
          labelPadding: EdgeInsets.zero,
            isScrollable: true,
           // unselectedLabelColor: Colors.yellow,
            indicatorSize: TabBarIndicatorSize.label,
           // indicator: BoxDecoration(),
            //indicatorColor: Colors.black,
            tabs: [
              SizedBox(
                width:MediaQuery.of(context).size.width*.1 ,
                child: const Tab(icon: Icon(Icons.people,size:30 ,),), ),
              SizedBox(
                  width:MediaQuery.of(context).size.width*.3 ,
                  child:const Tab(text: "Chats")),
              SizedBox(
                  width:MediaQuery.of(context).size.width*.3 ,
                  child:const Tab(text: "Status")),
              SizedBox(
                  width:MediaQuery.of(context).size.width*.3 ,
                  child: const Tab(text: "Calls")),
            ]),
      ),
      body: TabBarView(
        children: [
          const Center(child: Text("Community"),),
          const Center(child: Text("Chats"),),
          ListPage(),
          List_with_Builder(),
        ],
      ),
    ),
        );
  }

}