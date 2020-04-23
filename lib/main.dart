/**
 * @file main.dart ( PRINCIPAL )
 *
 * @brief Aplicacion de componentes de flutter( WIDGETS )
 *
 * @author Josué Abraham Gutiérrez Quino <josuandroidg7@gmail.com>
 * 
**/

import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale( 'es', 'ES' ),
        const Locale( 'en', 'US' ),
      ],
      initialRoute: '/',
      onGenerateRoute: ( settings ) {
        return MaterialPageRoute(
            builder: ( context ) => AlertPage() 
          );
      },
      routes: cargarRutas()
      // home: HomePage()
    );
  }
}