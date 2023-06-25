import 'package:flutter/material.dart';
import 'package:edu_nexus/drawer.dart';

class Cafeteria extends StatelessWidget {

  List<CafeteriaItem> items = [
    CafeteriaItem(name: 'Uttapa', price: 50),
    CafeteriaItem(name: 'Soft Drink', price: 20),
    CafeteriaItem(name: 'Cold Coffee', price: 45),
    CafeteriaItem(name: 'Maggi', price: 10),
    CafeteriaItem(name: 'Lunch Thali', price: 120),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cafeteria',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index].name}\t Ordered: ${items[index].qty}'),
            subtitle: Text('Price: ₹${items[index].price.toString()}'),
            trailing: ElevatedButton(
              onPressed: () {
                // Add to basket logic here
                print('Added ${items[index].name} to basket');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[850],
              ),
              child: Text('Add to Basket'),
            ),
          );
        },
      ),
    );
  }
}

class CafeteriaItem {
  String name;
  double price;
  int qty = 0;

  CafeteriaItem({required this.name, required this.price});
}
