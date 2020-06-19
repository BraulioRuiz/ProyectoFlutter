import 'package:flutter/material.dart';
import 'package:proyectomovil/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Inicio extends StatefulWidget{
  @override
  _Inicio createState() => _Inicio();
}

class _Inicio extends State<Inicio>{
  int _counter = 0;
  SharedPreferences sharedPreferences;

  void _incrementCounter() {
      _counter++;
  }

  @override
  void initState(){
    super.initState();
    checkLoginStatus();
  }

  checkLoginStatus() async{
    sharedPreferences = await SharedPreferences.getInstance();
    if(sharedPreferences.getString("token") == null){
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Login()), (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inicio"),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.exit_to_app,
              color: Colors.black) ,
              onPressed: () {
                sharedPreferences.clear();
                sharedPreferences.commit();
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => Login()), (Route<dynamic> route) => false);
              })
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Inicio de la APP',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}