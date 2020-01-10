import 'package:My_Bees/settings.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class NavigationDrawer extends Drawer{

  @override
  Widget build(context){
  return Drawer(
      child: ListView(
      // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Bee Keeper Joe'),
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
          ),
          ListTile(
            title: Text('Login'),
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Login()),);
              //Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Feed'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Calander'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Settings'),
            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (context) => SettingsPage()));
            },
          ),
        ],
      ),
    );
  }
}