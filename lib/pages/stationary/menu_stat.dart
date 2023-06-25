import 'package:flutter/material.dart';
import 'package:edu_nexus/drawer.dart';

class Stationary extends StatefulWidget {
  @override
  State<Stationary> createState() => _StationaryState();
}
Map <StationaryItem,int> cart =Map<StationaryItem,int>();
int total=0;
class _StationaryState extends State<Stationary> {
  List<StationaryItem> items = [
    StationaryItem(name: 'Notebook', price: 25),
    StationaryItem(name: 'Pen', price: 10),
    StationaryItem(name: 'Pencil', price: 5),
    StationaryItem(name: 'Calculator', price: 1000),
    StationaryItem(name: 'Printout(B/w)', price: 2),
    StationaryItem(name: 'Printout(color)', price: 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Stationary Store',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: AppDrawer(),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index].name}\t Ordered: ${cart.containsKey(items[index])?cart[items[index]]:0}'),
            subtitle: Text('Price: ₹${items[index].price.toString()}'),
            trailing: ElevatedButton(
              onPressed: () {
                setState(() {if (cart.containsKey(items[index])) {
                  cart[items[index]] = cart[items[index]]! + 1;
                } else {
                  cart[items[index]] = 1;
                }
                total+=items[index].price.toInt();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text('Add to Basket'),
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
               Navigator.pushNamed(context, '/stat_cart',arguments: cart);},
             ),
           ],
         ),
       ),

     ),
    );
  }
}

class StationaryItem {
  String name;
  double price;
  StationaryItem({required this.name, required this.price});
}
