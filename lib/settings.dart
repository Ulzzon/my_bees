import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {

  bool _lights = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: ListView(
        children: <Widget>[
          
          SwitchListTile(
            title: Text('Dark Mode'),
            value: _lights,
            onChanged: (bool value) { },//setState(() { _lights = value; }); },
          ),
        ],
      ),
    );
  }
}