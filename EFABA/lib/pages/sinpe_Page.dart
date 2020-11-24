import 'package:flutter/material.dart';

class SinpePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferencias"),
      ),
      body: ListView(
        children: <Widget>[
          Divider(),
          ListTile(
            title: Text("Elija o digite el número de celular destino"),
          ),
          Divider(),
          _obtnerNumer(),
          Divider(),
          _obtenerCantidadTranferencia(),
          Divider(),
          _obtenerComentario(),
          Divider(),
          _butonContinuar(),
        ],
      ),
    );
  }

  Widget _obtnerNumer() {
    return TextField(
      autofocus: true,
      //Indicamos que lo que se va a introducir en el textField van hacer letras
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Digite el número',
          labelText: 'Numero telefonico',
          helperText: 'Debe digitar 8 dígitos'),
    );
  }

  Widget _obtenerCantidadTranferencia() {
    return TextField(
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Digite la cantidad a transferir',
          labelText: 'Cantidad',
          helperText: 'Ejemplo 2000'),
    );
  }

  Widget _obtenerComentario() {
    return TextField(
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Digite el comentario',
          labelText: 'Comentario',
          helperText: 'Debe de ingresar un comentario'),
    );
  }

  Widget _butonContinuar() {
    return FlatButton(
      padding: EdgeInsets.all(10.0),
      color: Colors.teal,
      onPressed: () {},
      child: Text('Continuar'),
    );
  }
}
