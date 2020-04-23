
/**
 * @file input_page.dart
 *
 * @brief Aplicacion de componentes de flutter ( Contenedor animado )
 *
 * @author Josué Abraham Gutiérrez Quino <josuandroidg7@gmail.com>
 * 
**/

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email  = '';
  String _fecha  = '';
  String _opcionSeleccionada = 'Volar';
  TextEditingController _inputFieldDateController = new TextEditingController();
  List<String> _poderes = [ 'Volar', 'Super aliento', 'Rayos x'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text( 'Inputs page' ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric( horizontal: 15.0, vertical: 15.0 ),
        children: <Widget>[
          _crearInput(),
          SizedBox( height: 10.0,),
          _crearCorreo(),
          SizedBox( height: 10.0,),
          _crearPasword(),
          SizedBox( height: 10.0,),
          _crearFecha( context ),
          SizedBox( height: 10.0,),
          _crearDropDown(),
          SizedBox( height: 10.0,),
          _mostrarData()
        ],
      ),
    );
  }

  Widget _crearInput() {
    
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      onChanged: ( valor ) {
        setState(() {
          _nombre = valor;
        });
      },
      decoration: InputDecoration(
        counter: Text( 'Letras: ${_nombre.length}' ),
        hintText: 'Nombre de la persona',
        helperText: 'Apellido y nombres',
        icon: Icon( Icons.add_call ),
        suffixIcon: Icon( Icons.add_circle_outline ),
        labelText: 'Nombre',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular( 20.0 )
        ),

      ),

    );
  }

  Widget _crearFecha( BuildContext context ) {
    
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
        hintText: 'Fecha de nacimiento',
        icon: Icon( Icons.calendar_today ),
        suffixIcon: Icon( Icons.calendar_view_day ),
        labelText: 'Fecha de nacimiento',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular( 20.0 )
        ),

      ),
      onTap: () {
        FocusScope.of( context ).requestFocus( new FocusNode());
        _selectDate( context );
      },

    );
  }

  Widget _crearCorreo() {
    
    return TextField(
      keyboardType: TextInputType.emailAddress,
      onChanged: ( valor ) {
        setState(() {
          _email= valor;
        });
      },
      decoration: InputDecoration(
        hintText: 'Email',
        icon: Icon( Icons.email ),
        suffixIcon: Icon( Icons.email),
        labelText: 'Correo electronico',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular( 20.0 )
        ),

      ),

    );
  }

  Widget _crearPasword() {
  
    return TextField(
      
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Contrasenia',
        icon: Icon( Icons.all_out ),
        suffixIcon: Icon( Icons.add_circle_outline ),
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular( 20.0 )
        ),

      ),

    );
  }
  Widget _mostrarData() {
    return ListTile(
      title: Text( 'Usted se llama $_nombre' ),
      subtitle: Text( 'Correo: $_email' ),
      trailing: Text( _opcionSeleccionada ),
    );
  }

  /* Picker en las fechas */
  _selectDate( BuildContext context ) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime( 2018 ),
      lastDate: new DateTime( 2045 ),

    );
    if ( picked != null ) {
      setState(() {
        _fecha = picked.toString();
        _inputFieldDateController.text = _fecha;
      });
    }
  }
  
    /* Combos */
  List<DropdownMenuItem<String>> _getOpcionesDropDown() {
    List<DropdownMenuItem<String>> _lista = new List();
    _poderes.forEach( ( poder ) {
      _lista.add( DropdownMenuItem(
        child: Text( poder ),
        value: poder,
      ));
    });
    return _lista;
  }
  Widget _crearDropDown() {
    return DropdownButton(
      value: _opcionSeleccionada,
      items: _getOpcionesDropDown(),
      onChanged: ( opt ) {
        setState(() {
          _opcionSeleccionada = opt;
        });
      },
    );
  }
}