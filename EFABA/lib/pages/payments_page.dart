import 'package:EFABA/pages/marchamo_Page.dart';
import 'package:EFABA/pages/recargas_Page.dart';
import 'package:EFABA/pages/serviciosPublicos_page.dart';
import 'package:flutter/material.dart';

class PaymentsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagos'),
        backgroundColor: Colors.teal,
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.car_rental),
            title: Text('Pago de  Marchamo'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MarchamoPage(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Recargas'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecargasPage(),
                  ));
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.work),
            title: Text('Servicios Publicos'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => serviciosPublicosPage()));
            },
          ),
        ],
      ),
    );
  }
}
