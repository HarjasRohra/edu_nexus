import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.cyanAccent[700],
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.grey[900],
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Profile',style: TextStyle(color: Colors.teal[800]),),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                '/Profile',
              );
            },
          ),
          ListTile(
            title: Text('All About PICT',style: TextStyle(color: Colors.teal[800]),),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                '/AllAboutPICT'
              );
            },
          ),
          ListTile(
            title: Text('Academics',style: TextStyle(color: Colors.teal[800]),),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                  '/Academics'
              );
            },
          ),

          ListTile(
            title: Text('Clubs',style: TextStyle(color: Colors.teal[800]),),
            onTap: () {
              Navigator.pushReplacementNamed(
                  context,
                  '/club'
              );
            },
          ),

          ListTile(
            title: Text('Stationary Store',style: TextStyle(color: Colors.teal[800]),),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                  '/Stationary'
              );
            },
          ),
          ListTile(
            title: Text('Cafeteria',style: TextStyle(color: Colors.teal[800]),),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                  '/Cafeteria'
              );
            },
          ),

        ],
      ),
    );
  }
}