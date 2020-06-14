import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyectomovil/detalle.dart';

class Descripcion extends StatelessWidget{
  List<paisajeImage> items = new List<paisajeImage>();

  Descripcion(){
    items.add(new paisajeImage("assets/img/bosque.jpg", "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.", "Bosque"));
    items.add(new paisajeImage("assets/img/austria.jpg", "ISed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.", "Paisajes"));
    items.add(new paisajeImage("assets/img/minecraft.jpg", "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.", "Piramides"));
    items.add(new paisajeImage("assets/img/minecraft2.jpg", "In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided.", "Casas"));
  }

  Widget cardImagen(BuildContext context, int index){
    return GestureDetector(
      onTap: (){
        final snackBar = SnackBar(content: Text("ver mas"),);
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Detalle(items[index])
            ));
      },
      child: Card(
        margin: EdgeInsets.all(8),
        elevation: 4.0,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Hero(
                    tag: items[index],
                    child:
                        Container(
                          child: Transform.scale(
                            scale: 1.0,
                            child: Image(
                              image: AssetImage(items[index].imagen),
                              fit: BoxFit.fill,
                            ),
                          ),
                          /*height: 400,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(items[index].imagen),
                                  fit: BoxFit.fill
                              )
                          ),*/
                        )


                    //Image(
                        //image: AssetImage(items[index].imagen),
                        //fit: BoxFit.fill

                    //)
                  ),
                  Container(
                    padding: EdgeInsets.all(5.0),
                    alignment: Alignment.topLeft,

                    child:Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            items[index].titulo,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold
                            ),
                          ),
                        ),

                        Text(
                          items[index].texto,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.normal
                          ),
                        ),
                      ],
                    )

                    /*Text(
                      items[index].titulo,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold
                      ),
                    ),*/
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cards"),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list,
              color: Colors.black) ,
              onPressed: null)
        ],
      ),
      body: Container(
        child: Stack(
          children: <Widget>[
            ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) => cardImagen(context,index))
          ],
        ),
      ),
    );
  }
}

class paisajeImage{
  final String imagen;
  final String titulo;
  final String texto;

  paisajeImage(this.imagen,this.texto,this.titulo);
}