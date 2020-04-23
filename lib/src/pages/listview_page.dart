/**
 * @file listview_page.dart
 *
 * @brief Aplicacion de componentes de flutter ( mostrando imagenes con un listview.builder )
 *
 * @author Josué Abraham Gutiérrez Quino <josuandroidg7@gmail.com>
 * 
**/

import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  List<int> _listaNumeros = [1,2,3,4,5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'ListView Page .. ' ),
      ),
      body: _mostrarLista(),
    );
  }

  Widget _mostrarLista() {
    return ListView.builder(
      itemCount: _listaNumeros.length,
      itemBuilder: ( BuildContext context, index ) {
        final _numero = _listaNumeros[index];
        return FadeInImage(
            placeholder: AssetImage( 'assets/jar-loading.gif' ),
            image: NetworkImage( 'https://i.picsum.photos/id/$_numero/400/300.jpg' ),
        );
      },
    );
  }
}