import 'package:app_prac/src/pages/formulario_page.dart';
import 'package:flutter/material.dart';

class SecondFormPage extends StatelessWidget {

 @override
  Widget build(BuildContext context) {
    Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pagina formulario')
        ),
          body: Center(
          child: Text('Bienvenido ${parametros.nombre} ${parametros.apellido} ${parametros.edad}'), 
          ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
  
}