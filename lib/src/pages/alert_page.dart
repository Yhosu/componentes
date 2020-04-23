/**
 * @file alert_page.dart
 *
 * @brief Aplicacion de componentes de flutter
 *
 * @author Josué Abraham Gutiérrez Quino <josuandroidg7@gmail.com>
 * 
**/

import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Alert page'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon( Icons.airplanemode_active ),
      ),
      body: Center(
        child: RaisedButton(
          child: Text( 'Presionar' ),
          color: Colors.blue,
          onPressed: () => _mostrarAlerta( context ),
          textColor: Colors.white,
          shape: StadiumBorder()
        ),
      ),
    );
  }

  void _mostrarAlerta( BuildContext context ) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: ( context ) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular( 30.0 )
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text( 'Este es el contenido del widget' ),
              FlutterLogo( size: 100.0 )
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text( 'Ok' ) 
            ),
            FlatButton(
              onPressed: () => Navigator.of(context).pop(), 
              child: Text( 'Cancelar' ) 
            )
          ],
        );
      },
    );
  }
}

