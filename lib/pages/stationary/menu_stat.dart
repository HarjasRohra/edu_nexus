import 'package:flutter/material.dart';
import 'package:edu_nexus/drawer.dart';

class Stationary extends StatefulWidget {
  @override
  State<Stationary> createState() => _StationaryState();
}
Map data = {
  'Cart' : {},
  'Total':0
};
class _StationaryState extends State<Stationary> {
  List<StationaryItem> items = [
    StationaryItem(name: 'Notebook', price: 25),
    StationaryItem(name: 'Pen', price: 10),
    StationaryItem(name: 'Pencil', price: 5),
    StationaryItem(name: 'Calculator', price: 1000),
    StationaryItem(name: 'Printout(B/w)', price: 2),
    StationaryItem(name: 'Printout(color)', price: 10),
  ];

  void pushBack(BuildContext context) async{
    final Map returned_data = await Navigator.pushNamed(context, '/stat_cart',arguments: data) as Map;
    setState(() {
      data = returned_data;
      print (0);
    });
  }

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
            title: Text('${items[index].name}\t Ordered: ${data['Cart'].containsKey(items[index].name)?data['Cart'][items[index].name]['qty']:0}'),
            subtitle: Text('Price: ₹${items[index].price.toString()}'),
            trailing: ElevatedButton(
              onPressed: () {
                setState(() {

                  if (data['Cart'].containsKey(items[index].name)) {
                    data['Cart'][items[index].name]['qty']+=1;
                    data['Cart'][items[index].name]['total cost']+=data['Cart'][items[index].name]['price'];
                }
                else{
                  data['Cart'][items[index].name]={
                    'price': items[index].price,
                    'qty':1,
                    'total cost': items[index].price
                  };
                  }
                data['Total']+=items[index].price;
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
             Text('Your Total is:\t\t ₹${data['Total']}',
               style: TextStyle(
                 color: Colors.white,
                 fontSize: 18.0,
               ),
             ),
             Spacer(),
             IconButton(icon: Icon(Icons.shopping_cart), color: Colors.white,
               onPressed:() {
               pushBack(context);},
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
  int price;
  int total_cost=0;
  StationaryItem({required this.name, required this.price});
}
