import 'package:flutter/material.dart';
import 'login.dart';
import 'descripcion.dart';
import 'inicio.dart';
import 'Otra_cosa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practica con Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: "/",
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _currentIndex = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  final List<Widget> _children = [
    Inicio(),
    Login(),
    Descripcion(),
    Otra(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Inicio'),
              backgroundColor: Colors.deepPurpleAccent
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Login'),
              backgroundColor: Color(0xff1d1d1d),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.collections),
              title: Text('Imagen'),
              backgroundColor: Colors.purple
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.description),
              title: Text('otra cosa'),
              backgroundColor: Colors.deepPurple
          )
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
  //void onTabTapped(index){}
}
