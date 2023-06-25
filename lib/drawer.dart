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
              color: Colors.white,
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
            title: Text('Profile'),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                '/Profile',
              );
            },
          ),
          ListTile(
            title: Text('All About PICT'),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                '/AllAboutPICT'
              );
            },
          ),
          ListTile(
            title: Text('Academics'),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                  '/Academics'
              );
            },
          ),

          ListTile(
            title: Text('Stationary Store'),
            onTap: () {
              Navigator.pushReplacementNamed(
                context,
                  '/Stationary'
              );
            },
          ),
          ListTile(
            title: Text('Cafeteria'),
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