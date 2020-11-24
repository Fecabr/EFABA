import 'package:EFABA/pages/contact_page.dart';
import 'package:EFABA/pages/shopping_page.dart';
import 'package:EFABA/pages/transfers_page.dart';
import 'package:EFABA/pages/payments_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EFABA"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              // child: CircleAvatar(
              // backgroundImage: NetworkImage(
              //   "https://upload.wikimedia.org/wikipedia/commons/c/c9/Moon.jpg"),
              // radius: 60,
              //backgroundColor: Colors.transparent,
              // ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.payments),
              title: Text("Pagos"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentsPage()));
              },
            ),
            Divider(),
            ListTile(
              //Transferencias
              leading: Icon(Icons.attach_money_sharp),
              title: Text("Transferencias"),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TransferPage()));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.sync_alt),
              title: Text("Compras"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ShoppingPage(),
                    ));
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.toll),
              title: Text("Ajustes"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.settings_phone),
              title: Text('Contáctenos'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ContactPage(),
                    ));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          _mostrarAcercaDe(),
          Divider(),
          _mostrarTipoDeCambioDolar(),
          Divider(),
          _mostrarTipoCambioEuro(),
        ],
      ),
    );
  }

  Widget _mostrarAcercaDe() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.add_box_outlined,
              color: Colors.teal,
            ),
            title: Text('Bienvenido a EFABA'),
            subtitle: Text(
                'EFABA  es un Fintech que se enfoca en los servicios bancarios, lo que nos permite realizar una gran cantidad de operaciones, con la que podrá tener todo en un solo clip'),
          ),
        ],
      ),
    );
  }

  Widget _mostrarTipoDeCambioDolar() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.money_sharp,
              color: Colors.teal,
            ),
            title: Text('Tipo de cambio del dolar'),
            subtitle: Text('603.63'),
          ),
        ],
      ),
    );
  }

  _mostrarTipoCambioEuro() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.euro,
              color: Colors.teal,
            ),
            title: Text('Tipo de cambio de Euro'),
            subtitle: Text('718.98'),
          ),
        ],
      ),
    );
  }
}
