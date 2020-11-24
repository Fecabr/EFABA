import 'package:EFABA/pages/home_Page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 100),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            _mostrarUser(),
            _mostrarTexFieldUser(),
            _mostrarContrasena(),
            _mostrarTexFieldContrasenna(),
            Divider(),
            _buttonIngresar(context),
          ],
        ),
      ),
    );
  }

  //**********************Are de Widgets*********************

  //Mensajes
  Widget _mostrarUser() {
    return ListTile(
      title: Text('Ingrese el Usuario'),
    );
  }

  Widget _mostrarContrasena() {
    return ListTile(
      // tileColor: Colors.red,
      title: Text('Ingrese la contraseña'),
    );
  }

//Campos de texto
  Widget _mostrarTexFieldUser() {
    return TextField(
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }

  Widget _mostrarTexFieldContrasenna() {
    return TextField(
      obscureText: true,
      textCapitalization: TextCapitalization.characters,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

//Botones
  Widget _buttonIngresar(BuildContext context) {
    return FlatButton(
      textColor: Colors.white,
      padding: EdgeInsets.all(20.0),
      color: Colors.teal,
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomePage(),
            ));
      },
      child: Text('Ingresar'),
    );
  }
}
