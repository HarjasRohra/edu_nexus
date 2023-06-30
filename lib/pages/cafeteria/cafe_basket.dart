import 'package:flutter/material.dart';
class CafeBasket extends StatefulWidget {
  const CafeBasket({Key? key}) : super(key: key);

  @override
  State<CafeBasket> createState() => _CafeBasketState();
}

class _CafeBasketState extends State<CafeBasket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cafe Basket',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
