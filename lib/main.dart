import 'package:firebase_core/firebase_core.dart';
import 'package:edu_nexus/pages/stationary/stat_cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/all_about_pict.dart';
import 'pages/profile.dart';
import 'pages/academics.dart';
import 'pages/cafeteria/menu_cafe.dart';
import 'pages/stationary/menu_stat.dart';
import 'pages/cafeteria/cafe_basket.dart';
import 'wrapper.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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

      home: AuthGate(),
      routes: {
            '/AllAboutPICT': (context)=>AllAboutPICT(),
        '/Profile': (context)=>Profile(),
        '/Academics': (context)=> Academics(),
        '/Stationary': (context)=> Stationary(),
        '/stat_cart':(context)=>StatCart(),
        '/Cafeteria': (context)=> Cafeteria(),
        '/cafe_basket': (context)=>CafeBasket(),
      },

    );



  }
}

