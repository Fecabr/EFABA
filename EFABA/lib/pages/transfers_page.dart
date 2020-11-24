import 'package:EFABA/pages/sinpe_Page.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Transferencias"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.payment),
            title: Text("SINPE Movil"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SinpePage()));
            },
          ),
        ],
      ),
    );
  }
}
