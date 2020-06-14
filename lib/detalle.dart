import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'descripcion.dart';

class Detalle extends StatefulWidget{
  paisajeImage _paisaje;

  Detalle(paisajeImage paisaje){
    _paisaje = paisaje;
  }

  @override
  _DetallePagina createState() => _DetallePagina(_paisaje);
}

class _DetallePagina extends State<Detalle>{
  paisajeImage paisaje;

  _DetallePagina(paisajeImage paisaje){
    this.paisaje = paisaje;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Detalles"),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
              transitionOnUserGestures: true,
              tag: paisaje,
              child: Transform.scale(
                  scale: 1.0,
                  child: Image.asset(paisaje.imagen),
             ),
            ),
            Card(
              elevation: 8,
              margin: EdgeInsets.all(10),
              child: Container(
                padding: EdgeInsets.all(16),
                child: Text(paisaje.texto),
              ),
            )
          ],
        ),
      ),
    );

  }

}