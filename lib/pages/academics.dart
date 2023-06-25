import 'package:flutter/material.dart';
import '../drawer.dart';

class Academics extends StatelessWidget {
  List<String> notices = [
    'Notice 1',
    'Notice 2',
    'Notice 3',
    'Notice 4',
    'Notice 5',
    'Notice 6',
    // Add more notices as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Academics',
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Next Class',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Your Next Class is PBL(practical)',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              SizedBox(height: 16.0,),
              Text(
                'Attendance',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                'Your Total Attendance is 85.56%',
                style: TextStyle(
                    fontSize: 20
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Notice Board',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Container(
                height: 200, // Specify a fixed height for the scrollable notice board
                child: ListView.builder(
                  itemCount: notices.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: Icon(Icons.info),
                      title: Text(notices[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}