import 'package:flutter/material.dart';
class StatCart extends StatefulWidget {
  const StatCart({Key? key}) : super(key: key);

  @override
  State<StatCart> createState() => _StatCartState();
}



class _StatCartState extends State<StatCart> {
  @override

  Widget build(BuildContext context) {
    final cart_data=ModalRoute.of(context)!.settings.arguments as Map;
    final items=cart_data['Cart'].keys;


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
      body:
           ListView.builder(
                  itemCount: items.length,
                    itemBuilder: (context, index){

                      return Card(

                          child: ListTile(
                          title: Text(items.elementAt(index)),

                             subtitle: Text('₹${cart_data['Cart'][items.elementAt(index)]['total cost'].toStringAsFixed(2)}'),
                      trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState(() {
                          cart_data['Cart'][items.elementAt(index)]['qty']+=1;
                          cart_data['Total']+=cart_data['Cart'][items.elementAt(index)]['price'];
                          cart_data['Cart'][items.elementAt(index)]['total cost']+=cart_data['Cart'][items.elementAt(index)]['price'];
                        });
                      },
                      ),
                      Text('${cart_data['Cart'][items.elementAt(index)]['qty'].toInt().toStringAsFixed(2)}'),
                      IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: !cart_data.isEmpty?() {
                        setState(() {
                          if (cart_data['Cart'][items.elementAt(index)]['qty']==1){
                            cart_data['Cart'].remove(items.elementAt(index));
                          }
                          else{
                            cart_data['Cart'][items.elementAt(index)]['qty']-=1;
                          }
                          cart_data['Total']-=cart_data['Cart'][items.elementAt(index)]['price'];
                          cart_data['Cart'][items.elementAt(index)]['total cost']-=cart_data['Cart'][items.elementAt(index)]['price'];
                        }
                        );
                      }:() {
                        Navigator.pop(context,cart_data);
                      },
                      ),
                      ],
                      ),
                          ),
                      );


                    }


           ),
      bottomNavigationBar: BottomAppBar(
           child: Container(
    color: Colors.greenAccent,
    child: Row(
    children: [
    Text('Your Total is:\t\t ₹${cart_data['Total']}',
    style: TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    ),
    ),
    Spacer(),
    ElevatedButton(onPressed: () {
      Navigator.pushReplacementNamed(context, '/payment',arguments: cart_data);
    }, child: Text('Continue to payment')),
    ]
      ),
    ),
      )
    );
  }
}

