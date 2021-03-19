import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  String _mensaje1;
  String _mensaje2;
  String _mensaje3;
  String _mensaje4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Tipo de botones'),
       ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0, 
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  style: BorderStyle.solid),
                  ),
                  child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: () => {
                      setState((){
                  _mensaje1 = 'Usted a presionado RaisedButton';
                }),
                    },
                    child: Text('RaisedButton')
                  ),
            ),
             SizedBox(
              height: 15.0, 
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  style: BorderStyle.solid),
                  ),
                  child: FlatButton(
                    child: Text('FlatButton'),
                    onPressed: () => {
                      setState((){
                  _mensaje2 = 'Usted a presionado FlatButton';
                }),
                    },
                  ),
            ),
             SizedBox(
              height: 15.0, 
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  style: BorderStyle.solid),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => {
                      setState((){
                  _mensaje3 = 'Usted a presionado IconButton';
                }),
                    },
                    color: Colors.blue,
                    iconSize: 45.0,
                  ),
            ),
            SizedBox(
              height: 15.0
            ),
            Container(
              width: 250.0,
              height: 50.0,
              child: OutlineButton(
                color: Colors.blue,
                child: Text('OutlineButton'),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                borderSide: BorderSide(color: Colors.blue),
                onPressed: () => {
                      setState((){
                  _mensaje4 = 'Usted a presionado OutlineButton';
                }),
                    },
                ),
            ),
            
             SizedBox(
                height: 10.0,
              ),
              Container(
                width: 300,
                child: Text('Mensaje: $_mensaje1'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                width: 300,
                child: Text('Mensaje: $_mensaje2'),
              ),
               SizedBox(
                height: 10.0,
              ),
              Container(
                width: 300,
                child: Text('Mensaje: $_mensaje3'),
              ),
               SizedBox(
                height: 10.0,
              ),
              Container(
                width: 300,
                child: Text('Mensaje: $_mensaje4'),
              ),
              
              
            
          ],
        ),
      ),
    );
  }
}