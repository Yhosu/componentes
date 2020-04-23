/**
 * @file card_page.dart ( Tipos de cards )
 *
 * @brief Aplicacion de componentes de flutter( WIDGETS )
 *
 * @author Josué Abraham Gutiérrez Quino <josuandroidg7@gmail.com>
 * 
**/

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Card Page' ),
      ),
      body: ListView(
        padding: EdgeInsets.all( 10.0 ),
        children: <Widget>[
          _cardTipo1(),
          _cardTipo1(),
          _cardTipo2()
        ],
      ),
      
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 20.0,
      shape: RoundedRectangleBorder( 
        borderRadius: BorderRadius.circular( 30.0 )
      ),
      child: Column(
        children: <Widget>[
          ListTile(
            title    : Text( 'Tipo de card nro 1' ),
            subtitle : Text( 'Este es el sbutitulo para el tipo de card 1 que pretende mostrar una manera de representar informacion.' ),
            leading  : Icon( Icons.airport_shuttle ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: null, child: Text( 'Cancelar' ) ),
              FlatButton(onPressed: null, child: Text( 'Ok' ) )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(      
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage( 'assets/jar-loading.gif' ), 
            image: NetworkImage( 'https://upload.wikimedia.org/wikipedia/commons/9/95/Big_Pine_landscape.jpg' ),
            height: 300.0,
            fit: BoxFit.cover,
            fadeInDuration: Duration( milliseconds: 200 ),
          ),
          Container(
            padding: EdgeInsets.all( 10.0 ),
            child: Text( 'Esta es una imagen' ),
          )
        ],
      )
    );
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular( 30.0 ),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular( 30.0 ),
        child: card,
      ),
    );
  }
}