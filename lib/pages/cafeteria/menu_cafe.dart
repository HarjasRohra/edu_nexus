import 'package:flutter/material.dart';
import 'package:edu_nexus/drawer.dart';

class Cafeteria extends StatefulWidget {

  @override
  State<Cafeteria> createState() => _CafeteriaState();
}

class _CafeteriaState extends State<Cafeteria> {
  List<CafeteriaItem> items = [
    CafeteriaItem(name: 'Uttapa', price: 50),
    CafeteriaItem(name: 'Soft Drink', price: 20),
    CafeteriaItem(name: 'Cold Coffee', price: 45),
    CafeteriaItem(name: 'Maggi', price: 10),
    CafeteriaItem(name: 'Lunch Thali', price: 120),
  ];

  Map data ={
    'Cart':{},
    'Total':0
  };

  int total=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cafeteria',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
        backgroundColor: Colors.cyanAccent[700],
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index].name}\t Ordered: ${data['Cart'].containsKey(items[index])?data['Cart'][items[index]]:0}'),
            subtitle: Text('Price: ₹${items[index].price.toString()}'),
            trailing: ElevatedButton(
              onPressed: () {
                setState(() {if (data['Cart'].containsKey(items[index])) {
                  data['Cart'][items[index]] = data['Cart'][items[index]]! + 1;
                } else {
                  data['Cart'][items[index]] = 1;
                }
                total+=items[index].price.toInt();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text('Add to Basket',style: TextStyle(color: Colors.teal[800]),),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          color: Colors.greenAccent,
          child: Row(
            children: [
              Text('Your Total is:\t\t ₹${total}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              ),
              Spacer(),
              IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white,
                onPressed:(){
                  Navigator.pushNamed(context, '/cafe_basket',arguments: data);},
              ),
            ],
          ),
        ),

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
