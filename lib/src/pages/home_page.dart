/**
 * @file home_page.dart
 *
 * @brief Aplicacion de componentes de flutter( Listas/json )
 *
 * @author Josué Abraham Gutiérrez Quino <josuandroidg7@gmail.com>
 * 
**/

import 'package:flutter/material.dart';
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icon_string_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Componentes' ),
      ),
      body: _lista(),
      
    );
  }

  Widget _lista() {

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot ) {
        return ListView(
          children: _listaItems( snapshot.data, context ),
        );

      },
    );
    
  }

  List<Widget> _listaItems( List<dynamic> data, BuildContext context ) {

    final List<Widget> opciones = [];
    data.forEach( ( opt ) {
      final tmpWidget = new ListTile(
        title   : Text( opt['texto'] ),
        leading : getIcon( opt['icon'] ),
        onTap   : () {
          Navigator.pushNamed( 
            context, opt['ruta'] );
          /* Esta es una forma de navegar */
          // final route = MaterialPageRoute(
          //   builder: ( context ) => AlertPage(),
          // );
          // Navigator.push( context, route );
        },
      );
      opciones..add( tmpWidget )
              ..add( Divider() );
    } );

    return opciones;

  }
}