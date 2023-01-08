import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NavDrawer(),
  ));
}

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DRAWER"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.lime),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: const Text("Jon Abraham",style: TextStyle(color: Colors.black),),
                accountEmail: const Text("Abraham@006gmail.com",style: TextStyle(color: Colors.black),),
                currentAccountPicture: GestureDetector(
                  onTap: () {
                    print("current profile");
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/sbk1.jpg"),
                  ),
                  // otherAccountsPictures: [], onnil kooduthal profile kodukkan
                ),
                otherAccountsPictures: const [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/sbk2.jpg"),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/sbk1.jpg"),
                  ),
                ],
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      fit:BoxFit.cover,
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnRWI3lX3z1xPbRKWseNoMK1V5fdJpNDnV_w&usqp=CAU"))),
              ),
              const ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(
                thickness: 2,
              ),
              const ListTile(
                leading: Icon(Icons.notifications_active_outlined),
                title: Text("Notification"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(
                thickness: 2,
              ),
              const ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              const Divider(
                thickness: 2,
              ),
              const ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
