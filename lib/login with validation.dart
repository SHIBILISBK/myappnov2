import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Listpage.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginFormState();

}

class _LoginFormState extends State {

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LoginForm"),),
      body: Form(
        key: formkey,
        child:ListView(
          children: [
            const Center(child: Text("LoginPage",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),)),
            Padding(
              padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter UserName",
                  labelText: "USERNAME",
                  prefixIcon: const Icon(Icons.account_box_sharp),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                textInputAction: TextInputAction.next,
                validator: (uname){
                  if(uname!.isEmpty || !uname.contains("@")){
                    return 'Enter a valid username';
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "PASSWORD",
                  prefixIcon: const Icon(Icons.visibility_off),
                  suffixIcon: const Icon(Icons.visibility_outlined),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
                ),
                textInputAction: TextInputAction.done,
                validator: (password){
                  if(password!.isEmpty || password.length < 6){
                    return 'Enter a valid password , length should be greater than 6';
                  }else{
                    return null;
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200,right: 200),
              child: ElevatedButton(
                  onPressed: (){
                    final valid = formkey.currentState!.validate();
                    if (valid){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> ListPage()));
                    }
                  },
                  child: const Text("Login")),
            ),
            const SizedBox(
              height: 50,
            ),
            TextButton(
                onPressed: (){},
                child:const Text("Not A User? Register Here"))
          ],
        ),
      ),
    );
  }

}
