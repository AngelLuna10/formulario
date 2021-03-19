import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  FocusNode nombreFocus;
  FocusNode apellidoFocus;
  FocusNode edadFocus;

  String nombre;
  String apellido;
  String edad;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Formulario'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Nombre',
                        hintText: 'Ejemplo: Juan',
                        prefixIcon: Icon(Icons.person)),
                    //controller: nombreTextController,
                    onSaved: (value) {
                      nombre = value;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo vacio';
                      }
                    },
                    focusNode: this.nombreFocus,
                    onEditingComplete: () =>
                      requestFocus(context, apellidoFocus),
                      textInputAction: TextInputAction.next,
                    ),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: 'Apellido',
                        hintText: 'Ejemplo: Cruz',
                        prefixIcon: Icon(Icons.person)),
                    //controller: apTextController,
                    onSaved: (value) {
                      apellido = value;
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Campo vacio';
                      }
                      },
                      focusNode: this.edadFocus,
                    onEditingComplete: () =>
                      requestFocus(context, apellidoFocus),
                      textInputAction: TextInputAction.next,
                    ),
                SizedBox(
                  height: 10.0,
                ),
               
                TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        labelText: 'Edad',
                        hintText: 'Ejemplo: 30',
                        prefixIcon: Icon(Icons.person)),
                    //controller: apTextController,
                    onSaved: (value) {
                      edad = value;
                    },
                    validator: (value){
                      if (value.isEmpty) {
                        return 'Campo vacio';
                      }
                    }),
                SizedBox(
                  height: 10.0,
                ),
                
                RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    if (formKey.currentState.validate()) {
                      formKey.currentState.save();
                      if (nombre.compareTo('Angel') == 0 &&
                          apellido.compareTo('Luna') == 0) {
                        Navigator.pushNamed(context, 'formulario_dos',
                            arguments: Argumentos(
                                nombre: this.nombre, apellido: this.apellido,edad: this.edad));
                      } else {
                        print('Datos incorrectos');
                      }
                    }
                  },
                  child: Text('Enviar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void requestFocus(BuildContext context,FocusNode focusNode){
    FocusScope.of(context).requestFocus();
  }

  @override
  void initState() {
    super.initState();
    //nombreTextController = TextEditingController();
    //apTextController = TextEditingController();
    nombreFocus = FocusNode();
    apellidoFocus = FocusNode();
    edadFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    //nombreTextController.dispose();
    //apTextController.dispose();
    nombreFocus.dispose();
    apellidoFocus.dispose();
    edadFocus.dispose();
  }
}


class Argumentos {
  String nombre;
  String apellido;
  String edad;

  Argumentos({this.nombre, this.apellido, this.edad});
}