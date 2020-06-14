import 'package:flutter/material.dart';

class Otra extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Text("otra vaina"),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list,
              color: Colors.black) ,
              onPressed: null)
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/img/bosque.jpg"),
                      fit: BoxFit.fill
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}