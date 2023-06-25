import 'package:edu_nexus/pages/stationary/stat_cart.dart';
import 'package:flutter/material.dart';
import 'pages/all_about_pict.dart';
import 'pages/profile.dart';
import 'pages/academics.dart';
import 'pages/cafeteria/menu_cafe.dart';
import 'pages/stationary/menu_stat.dart';


void main() {
  runApp(EduNexus());
}

class EduNexus extends StatelessWidget {
  const EduNexus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        title: 'EduNexus',
        theme: ThemeData(
        primarySwatch: Colors.grey,
          iconTheme: IconThemeData(color: Colors.white)
    ),

    home: AllAboutPICT(),
    routes: {
          '/AllAboutPICT': (context)=>AllAboutPICT(),
      '/Profile': (context)=>Profile(),
      '/Academics': (context)=> Academics(),
      '/Stationary': (context)=> Stationary(),
      '/stat_cart':(context)=>StatCart(),
      '/Cafeteria': (context)=> Cafeteria(),
    },
    );



  }
}

