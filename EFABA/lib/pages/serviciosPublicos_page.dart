import 'package:flutter/material.dart';

class serviciosPublicosPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Servicios Publicos'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('ICE Télefono'),
          ),
          Divider(),
          ListTile(
            title: Text('CNFL Electricidad'),
          ),
          Divider(),
          ListTile(
            title: Text('RACSA'),
          ),
          Divider(),
        ],
      ),
    );
  }
}
