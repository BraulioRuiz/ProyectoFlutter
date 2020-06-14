import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0xff1d1d1d),
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.add,
              color: Colors.white) ,
              onPressed: null,
          color: Colors.black,)
        ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/img/13688-minimalista.png"),
                        fit: BoxFit.cover
                    )
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child:Icon(
                              Icons.person,
                              color: Colors.red,
                              size: 200.0
                          ) ,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 20.0,
                                offset: Offset(0,10)
                            )
                          ]
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey[100]))
                            ),
                            child:
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Correo Electronico",
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                  prefixIcon: Icon(Icons.email)

                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Contraseña",
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                  prefixIcon: Icon(Icons.enhanced_encryption)
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.redAccent
                      ),
                      child: Center(
                        child: Text("Login", style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    SizedBox(height: 70,),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}