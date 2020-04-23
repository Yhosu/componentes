/**
 * @file avatar_page.dart
 *
 * @brief Aplicacion de componentes de flutter
 *
 * @author Josué Abraham Gutiérrez Quino <josuandroidg7@gmail.com>
 * 
**/

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Avatar page' ),
        actions: <Widget>[
          Container(
            margin: EdgeInsets.only( right: 5.0 ) ,
            child: CircleAvatar(
              backgroundImage: NetworkImage( 'https://upload.wikimedia.org/wikipedia/commons/9/95/Big_Pine_landscape.jpg' ),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only( right: 5.0 ) ,
            child: CircleAvatar(
              child: Text( 'GQ' ),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage( 'https://upload.wikimedia.org/wikipedia/commons/9/95/Big_Pine_landscape.jpg' ),
          placeholder: AssetImage( 'assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200 ),
        ),
      ),
    );

  }
}

