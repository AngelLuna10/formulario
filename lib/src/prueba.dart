import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'trabajo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text('Buscar'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search_outlined),
              tooltip: 'Buscar',
              onPressed: () {
                print('Busqueda iniciada');
              }),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.red)),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 300.0,
                      child: Text(
                        'LUAN GAMES',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.brown,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: Text(
                        'Shadow of the Colossus',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Costo MXN 1 200.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all()),
                      width: 270.0,
                      height: 160.0,
                      child: Center(
                        child: Image.network(
                            'https://m.media-amazon.com/images/I/51O6Xj06TbL.jpg'),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: Text(
                        ' God of War ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.lightGreen,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Costo MXN 1 800.00',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.lightBlueAccent,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          border: Border.all()),
                      width: 270.0,
                      height: 180.0,
                      child: Center(
                        child: Image.network(
                            'https://w7.pngwing.com/pngs/57/191/png-transparent-god-of-war-iii-playstation-4-video-game-kratos-god-of-war-ps4-game-boss-war.png'),
                      ),
                    ),
                    Container(
                      width: 300.0,
                      child: Text(
                        ' Videogames ',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      width: 250.0,
                      child: Text(
                        'Envio FREE',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black45,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.games,
                              size: 40.0, color: Colors.black26),

                          /*Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.account_circle, size: 60.0, color: Colors.green),
                  ),*/
                          Expanded(
                            child: Icon(Icons.search,
                                size: 40.0, color: Colors.black26),
                            /*child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.airplay, size: 60.0, color: Colors.green),
                  )*/
                          ),
                          Expanded(
                            child: Icon(Icons.home,
                                size: 40.0, color: Colors.black26),
                            /*child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child: Icon(Icons.airplay, size: 60.0, color: Colors.green),
                  )*/
                          ),
                          Icon(Icons.people, size: 40.0, color: Colors.black26),
                          /*Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.blue)),
                    width: 80,
                    height: 80,
                    child:
                        Icon(Icons.computer, size: 60.0, color: Colors.green),
                  ),*/
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //backgroundColor: Colors.greenAccent,

      //floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      /*floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Bóton presionado');
        },
      ),*/
    );
  }
}