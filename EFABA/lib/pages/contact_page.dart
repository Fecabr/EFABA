import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contáctenos'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 100),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            _cardContactenos(),
          ],
        ),
      ),
    );
  }

  Widget _cardContactenos() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.contact_page, color: Colors.teal),
            title: Text('support@efaba.com'),
            subtitle: Text('4000 88 38'),
          ),
        ],
      ),
    );
  }
}
