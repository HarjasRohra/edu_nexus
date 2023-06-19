import 'package:flutter/material.dart';

//General Information Page
class AllAboutPICT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'All About PICT',
              style: TextStyle(
                color: Colors.white,
              ),

            ),
            Spacer(),
            IconButton(
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              onPressed: () {

              },
            ),
          ],
        ),
        backgroundColor: Colors.grey[900],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Profile()),
                );
              },
            ),
            ListTile(
              title: Text('All About PICT'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AllAboutPICT()),
                );
              },
            ),
            ListTile(
              title: Text('Academics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Academics()),
                );
              },
            ),
            ListTile(
              title: Text('Club Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>ClubPage()),
                );
              },
            ),
            ListTile(
              title: Text('Stationary Store'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Stationary()),
                );
              },
            ),
            ListTile(
              title: Text('Cafeteria'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Cafeteria()),
                );
              },
            ),
          ],
        ),
      ),
      body:
      SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/PICT.jpeg', // Replace with campus photo
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'About PICT',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Pune Institute of Computer Technology (PICT) is a renowned college located in Pune, Maharashtra, India. It offers excellent academic programs in computer science and information technology.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Academics',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'PICT offers undergraduate and postgraduate courses in Computer Engineering, Information Technology, and Artificial Intelligence and Data Science. The college provides quality education and equips students with industry-relevant skills.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Placements',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'PICT has a strong placement record, with top companies visiting the campus for recruitment. Students receive excellent job opportunities and internships from renowned organizations in the industry.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Co-curricular Activities',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'PICT encourages students to participate in various co-curricular activities like technical clubs, cultural clubs, sports clubs, and entrepreneurial clubs. These activities provide students with opportunities to explore their interests and enhance their skills.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Attractions Nearby',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Near PICT, you can visit attractions like Shaniwar Wada, Dagdusheth Halwai Ganpati Temple, FC Road, and Sambhaji Park. These places offer glimpses of Pune\'s history, culture, and provide recreational opportunities.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
          ],
        ),
      ),

    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Profile()),
                );
              },
            ),
            ListTile(
              title: Text('All About PICT'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AllAboutPICT()),
                );
              },
            ),
            ListTile(
              title: Text('Academics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Academics()),
                );
              },
            ),
            ListTile(
              title: Text('Club Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>ClubPage()),
                );
              },
            ),
            ListTile(
              title: Text('Stationary Store'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Stationary()),
                );
              },
            ),
            ListTile(
              title: Text('Cafeteria'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cafeteria()),
                );
              },
            ),

          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/student.jpeg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[900],
            ),
            Text(
              'Name:',
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'Test123',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0,),
            Text(
              'Class:',
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'FE-9',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Text(
              'Roll No:',
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '10988',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Text(
              'Branch:',
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              'E&TC',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
            Text(
              'Batch Of:',
              style: TextStyle(
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0,),
            Text(
              '2026',
              style: TextStyle(
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height:30.0),
          ],
        ),
      ),
    );
  }
}
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
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Profile()),
                );
              },
            ),
            ListTile(
              title: Text('All About PICT'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AllAboutPICT()),
                );
              },
            ),
            ListTile(
              title: Text('Academics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Academics()),
                );
              },
            ),
            ListTile(
              title: Text('Club Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>ClubPage()),
                );
              },
            ),
            ListTile(
              title: Text('Stationary Store'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Stationary()),
                );
              },
            ),
            ListTile(
              title: Text('Cafeteria'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cafeteria()),
                );
              },
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Timetable',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),


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

class ClubPage extends StatelessWidget {
  const ClubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Club Page',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Profile()),
                );
              },
            ),
            ListTile(
              title: Text('All About PICT'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AllAboutPICT()),
                );
              },
            ),
            ListTile(
              title: Text('Academics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Academics()),
                );
              },
            ),
            ListTile(
              title: Text('Club Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>ClubPage()),
                );
              },
            ),
            ListTile(
              title: Text('Stationary Store'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Stationary()),
                );
              },
            ),
            ListTile(
              title: Text('Cafeteria'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cafeteria()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}

class Stationary extends StatelessWidget {
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
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Profile()),
                );
              },
            ),
            ListTile(
              title: Text('All About PICT'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AllAboutPICT()),
                );
              },
            ),
            ListTile(
              title: Text('Academics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Academics()),
                );
              },
            ),
            ListTile(
              title: Text('Club Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>ClubPage()),
                );
              },
            ),
            ListTile(
              title: Text('Stationary Store'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Stationary()),
                );
              },
            ),
            ListTile(
              title: Text('Cafeteria'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cafeteria()),
                );
              },
            ),

          ],
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index].name}\t Ordered: ${items[index].qty}'),
            subtitle: Text('Price: Rs ${items[index].price.toString()}'),
            trailing: ElevatedButton(
              onPressed: () {
                // Add to basket logic here
                print('Added ${items[index].name} to basket');
              },
              child: Text('Add to Basket'),
            ),
          );
        },
      ),
    );
  }
}

class StationaryItem {
  String name;
  double price;
  int qty=0;
  StationaryItem({required this.name, required this.price});
}

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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey[900],
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Profile()),
                );
              },
            ),
            ListTile(
              title: Text('All About PICT'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>AllAboutPICT()),
                );
              },
            ),
            ListTile(
              title: Text('Academics'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Academics()),
                );
              },
            ),
            ListTile(
              title: Text('Club Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>ClubPage()),
                );
              },
            ),
            ListTile(
              title: Text('Stationary Store'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Stationary()),
                );
              },
            ),
            ListTile(
              title: Text('Cafeteria'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cafeteria()),
                );
              },
            ),

          ],
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index].name}\t Ordered: ${items[index].qty}'),
            subtitle: Text('Price: Rs ${items[index].price.toString()}'),
            trailing: ElevatedButton(
              onPressed: () {
                // Add to basket logic here
                print('Added ${items[index].name} to basket');
              },
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