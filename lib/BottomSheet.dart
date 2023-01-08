import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Botmsheet(),
  ));
}

class Botmsheet extends StatelessWidget {
  void Show(BuildContext context) {
    showModalBottomSheet(
        context: context,
        elevation: 3,
        builder: (context) => Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  ListTile(leading: Icon(Icons.train), title: Text("train")),
                  ListTile(leading: Icon(Icons.share), title: Text("share")),
                  ListTile(
                      leading: Icon(Icons.info), title: Text("information")),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bottom Sheet"),
      ),
      body: Center(
        child: GestureDetector(
          child: Text("Bottom Sheet"),
          onLongPress: () => Show(context),
        ),
      ),
    );
  }
}
