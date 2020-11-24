import 'package:flutter/material.dart';

class RecargasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recargas'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('RECARGA ICE KOLBI'),
          ),
          Divider(),
          ListTile(
            title: Text('RECARGA CLARO PRE-PA'),
          ),
          ListTile(
            title: Text('RECARGA MOVISTAR PRE-PAGO'),
          ),
        ],
      ),
    );
  }
}
