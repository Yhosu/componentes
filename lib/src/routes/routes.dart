/**
 * @file routes.dart ( Indicador de rutas de toda la aplicacion )
 *
 * @brief Aplicacion de componentes de flutter( WIDGETS )
 *
 * @author Josué Abraham Gutiérrez Quino <josuandroidg7@gmail.com>
 * 
**/

import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/listview_page.dart';


Map<String, WidgetBuilder> cargarRutas() {

  final Map<String, WidgetBuilder> rutas = 
  {  
    '/'      : ( BuildContext context ) => HomePage(),
    'alert'  : ( BuildContext context ) => AlertPage(),
    'avatar' : ( BuildContext context ) => AvatarPage(),
    'card'   : ( BuildContext context ) => CardPage(),
    'animated_container' : ( BuildContext context ) => AnimatedContainerPage(),
    'input'  : ( BuildContext context ) => InputPage(),
    'list'   : ( BuildContext context ) => ListViewPage(),
  };
  return rutas;
}

