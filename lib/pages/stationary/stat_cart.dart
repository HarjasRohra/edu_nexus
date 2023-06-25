import 'package:flutter/material.dart';

class StatCart extends StatefulWidget {
  const StatCart({Key? key}) : super(key: key);

  @override
  State<StatCart> createState() => _StatCartState();
}



class _StatCartState extends State<StatCart> {
  @override
  Widget build(BuildContext context) {
final data=ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stationary Cart',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
        backgroundColor: Colors.white,
      ),

    );
  }
}


