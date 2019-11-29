import 'package:flutter/material.dart';

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
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}