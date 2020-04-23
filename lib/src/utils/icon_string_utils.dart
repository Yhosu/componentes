/**
 * @file icon_string_util.dart ( Utilidades )
 *
 * @brief Aplicacion de componentes de flutter( WIDGETS )
 *
 * @author Josué Abraham Gutiérrez Quino <josuandroidg7@gmail.com>
 * 
**/

import 'package:flutter/material.dart';

final _icons = <String, IconData> {
  'add_alert'     : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open'   : Icons.folder_open,
  'donut_large'   : Icons.donut_large,
  'input'         : Icons.input,
  'list'          : Icons.list,
};

Icon getIcon( String nombreIcono ) {
  return Icon( _icons[nombreIcono], color: Colors.blue, );
}

