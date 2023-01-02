
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Column(
        children: [
          const Center(
              child:  Text(
                "Loginpage",
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),
              )),
           Padding(
            padding: EdgeInsets.only(left: 50,right: 50,bottom: 20,top: 20),
            child:  TextField(
              decoration: InputDecoration(
                hintText: "Enter UserName",
                  labelText: "USERNAME",
                  prefixIcon: Icon(Icons.account_box_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(left: 50,right: 50,bottom: 50),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.visibility_off),
                suffixIcon: Icon(Icons.visibility_outlined),
                hintText: "Enter Password",
                  labelText: "PASSWORD",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
          ),
          ElevatedButton(onPressed: (){
            Fluttertoast.showToast(
                msg: "This is Center Short Toast",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
          }, child:const Text("Login")),
          const SizedBox(
            height: 50,),
          TextButton(
              onPressed: (){},
              child:const Text("Not A User? Register Here"))
        ],

      )
      );
  }

}