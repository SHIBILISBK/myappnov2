import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: List_with_Builder(),
  ));
}

class List_with_Builder extends StatelessWidget {
  var name = ['name1','name2','name3','name4','name5'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.custom(
        childrenDelegate:SliverChildListDelegate([
          const Card(
            child: Text("data1"),
          ),
          const Card(
            child: Text("data2"),
          ),
          const Card(
            child: Text("data3"),
          ),
          const Card(
            child: Text("data4"),
          ),
          const Card(
            child: Text("data5"),
          )
        ])





          // Card(
          //   color: Colors.green,
          //   shadowColor: CupertinoColors.darkBackgroundGray,
          //   child :ListTile(
          //     title: Text("petstore1"),
          //     subtitle: Text("description"),
          //     leading: const CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuJf8Rxl04E4mTYxR42piOBkf6MipU97-RdA&usqp=CAU")),
          //     //leading: Icon(Icons.music_note_outlined),
          //     trailing: Wrap(
          //       children: const [
          //         Icon(Icons.message_outlined),
          //         SizedBox(width: 20,),
          //         Icon(Icons.music_video_rounded),
          //       ],
          //     ),
          //   ),
          // ),
          // const Card(
          //   child : ListTile(
          //     title: Text("petstore2"),
          //     subtitle: Text("description"),
          //     leading: CircleAvatar(backgroundImage: NetworkImage("https://images.squarespace-cdn.com/content/v1/5c46dff7365f022c9015f51b/1609727094261-XFSAX3IRA35VC2NI3ADH/mixkit-headphones-playing-music-183-desktop-wallpaper-cut.png?format=2500w")),
          //     //leading: Icon(Icons.music_note_outlined),
          //     trailing: Icon(Icons.music_video_rounded),
          //   ),
          // ),
          // const Card(
          //   child :ListTile(
          //     title: Text("petstore3"),
          //     subtitle: Text("description"),
          //     leading: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShW7usACNhnT7Fgs2H_D9sC2vens2CZ3zJ0_YCMTXBcFIr2fqaC-qTix87ttAEe818xio&usqp=CAU")),
          //     // leading: Icon(Icons.music_note_outlined),
          //     trailing: Icon(Icons.music_video_rounded),
          //   ),
          // ),
          // const Card(
          //   child :ListTile(
          //     title: Text("petstore4"),
          //     subtitle: Text("description"),
          //     leading: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQklMYoXBwMWdyci8bshS-IsM5w4MCIKWyrj4jxBMcPjDKoQZ-yqbQ5Nmtt2dSpQ_6lStE&usqp=CAU")),
          //     //leading: Icon(Icons.music_note_outlined),
          //     trailing: Icon(Icons.music_video_rounded),
          //   ),
          // ),
          // const Card(
          //   child:ListTile(
          //     title: Text("petstore5"),
          //     subtitle: Text("description"),
          //     leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvDCHSAumWWj4gPE-aGn6kElqfQoMSolxvggKOMDagAc0-yqlRkn-9a6JJcSqXX8iFPcQ&usqp=CAU")),
          //     //leading: Icon(Icons.music_note_outlined),
          //     trailing: Icon(Icons.music_video_rounded),
          //   ),
          // ),




        //   SliverChildBuilderDelegate((BuildContext context, int index) {
        // return Card(
        //   child: Text(name[index]),
        // );
        //} , childCount: name.length),
      ));
  }
}
