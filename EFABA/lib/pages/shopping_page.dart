import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compras'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Compra de EFA´S'),
          ),
          _InputCantidadEfas(),
          Divider(),
          _buttonComprar(),
        ],
      ),
    );
  }

  Widget _InputCantidadEfas() {
    return TextField(
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          hintText: 'Cantidad de EFA´S',
          labelText: 'EFA´S',
          helperText: 'Ingrese la cantidad de EFA´S a comprar'),
    );
  }

  Widget _buttonComprar() {
    return FlatButton(
      padding: EdgeInsets.all(20.0),
      color: Colors.teal,
      onPressed: () {},
      child: Text('Comprar'),
    );
  }
}
