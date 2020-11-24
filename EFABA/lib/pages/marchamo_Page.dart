import 'dart:ffi';

import 'package:flutter/material.dart';

class MarchamoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pago de Marchamo'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Pago de Marchaos'),
          ),
          Divider(),
          _obtenerDatosVehiculos(),
          Divider(),
          ListTile(
            title: Text(''),
          ),
          Divider(),
          _buttonContinuar(),
        ],
      ),
    );
  }

  Widget _buttonContinuar() {
    return FlatButton(
      padding: EdgeInsets.all(20.0),
      color: Colors.teal,
      onPressed: () {},
      child: Text('Continuar'),
    );
  }

  Widget _obtenerDatosVehiculos() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.car_repair,
              color: Colors.teal,
            ),
            title: Text('Placa del Vehiculo'),
          ),
          _obtenerPlaca(),
        ],
      ),
    );
  }

  Widget _obtenerPlaca() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
          hintText: 'Número de Placa',
          labelText: 'Número de Placa',
          helperText: 'Solo ingrese el numero de placa'),
    );
  }

//Tarjeta de seguros
  Widget cardSeguros() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('Cobertura adicional'),
          ),
          _obtenerSeguroMasProteccion(),
          _obtenerSeguroResponsabilidadCivi(),
          _obtenerSeguroAsistenciaCarretera(),
          Divider(),
        ],
      ),
    );
  }

//Widgets de seguros
  Widget _obtenerSeguroMasProteccion() {
    return CheckboxListTile(
      title: Text('Más protección : 7140 CRC'),
      value: null,
      onChanged: (valor) {},
    );
  }

  Widget _obtenerSeguroResponsabilidadCivi() {
    return CheckboxListTile(
      title: Text('Responsabilidad civil: 53675 CRC'),
      value: null,
      onChanged: (value) {},
    );
  }

  Widget _obtenerSeguroAsistenciaCarretera() {
    return CheckboxListTile(
      title: Text('Asistencia en carretera : 15820 CRC'),
      value: null,
      onChanged: (value) {},
    );
  }
}
