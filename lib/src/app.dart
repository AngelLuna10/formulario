import 'package:flutter/material.dart';

import 'package:app_prac/src/routes/routes.dart';
  
class MyApp extends StatelessWidget {
  
  /*
  final nombres = [
    'Juan'
    'Pedro'
    'Maria'
    'Fernanda'
    'Hurtado'
    'Chavez'
    'Angel'
  ];
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Imagenes',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: obtenerRutas(), 
     // home: HomePage(),
    );
  }   
}
      /*
       Scaffold(
        appBar: AppBar(
          title: Text('Angel Luna Cruz'),
        ),
        body: ListView(
          children: _crearItems()
        ), 
        ),
    ); 
  }
  List<Widget> _crearItems(){
    List<Widget> lista = new List<Widget>();

    for(var opt in nombres){
      final tempWidget = ListTile(
                      title: Text(opt),
                      subtitle: Text('Esto es un subtitulo'),
                      
                      trailing: Icon(Icons.keyboard_arrow_right),
                      onTap: (){}
                    );
      lista.add(tempWidget);
      lista.add(Divider());
     
    }
  return lista;
  }
}
*/

/*
class HomePage extends StatelessWidget {
  int contador = 0;
  TextStyle estilosTexto = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menú principal',
          onPressed: () => {},
        ),
        title: Text('Imágenes'),
        centerTitle: true,
        elevation: 5.0,
        shape: 
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert),
            tooltip: 'Alertas',
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.mail),
            tooltip: 'Correo',
            onPressed: () => {},
          ),
        ]
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              child: Image.asset('assets/images/img1.jpg'),
            ),
              SizedBox(
              height: 50,
            ),
            Text('Haz presionado este número de veces', style: estilosTexto),
            SizedBox(
              height: 20,
            ),
            Text('$contador', style: estilosTexto),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
          print(contador);
        },
        child: Icon(Icons.plus_one),
      )
    );
  }
}
*/