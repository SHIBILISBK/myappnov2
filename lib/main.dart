import 'dart:async';

import 'package:flutter/material.dart';
import 'package:myappnov2/Gridview%20with%20count.dart';
import 'package:myappnov2/Listpage.dart';
import 'package:myappnov2/gridview.dart';
import 'package:myappnov2/homepage.dart';
import 'package:myappnov2/login%20with%20validation.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen(),debugShowCheckedModeBanner: false,));
}

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),(){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Grid_count()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        /// set background color for container
       // color: Colors.black87,
        /// set background image for container
         //decoration: const BoxDecoration(
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //       image: NetworkImage("https://images.pexels.com/photos/1105666/pexels-photo-1105666.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))
        // ),
        /// set linear background color for container
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
            Colors.indigo,
            Colors.green,
            Colors.yellow

          ])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
               //Image(image: AssetImage("assets/icons/headphones.png"))
              Image.asset("assets/icons/headphones.png"),
             const SizedBox(
               height: 20,
             ),
             const Text("MUSIC",style: TextStyle(fontSize: 50,color: Colors.deepOrange),),
            ],
          ),
        ),
      ),
    );
  }
}
