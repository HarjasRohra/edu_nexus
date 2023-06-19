import 'package:flutter/material.dart';
import 'student.dart';
void main() {
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

    home: AllAboutPICT());
  }
}

/**class AllAboutPICT extends StatelessWidget {
  const AllAboutPICT({Key? key}) : super(key: key);

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
              title: Text('Classes'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=>Classes()),
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
*/
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Classes extends StatelessWidget {
  const Classes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
