import 'package:flutter/material.dart';
import 'package:edu_nexus/drawer.dart';
import 'package:url_launcher/url_launcher.dart';


class Club extends StatelessWidget {
  List<ClubItem> items = [
    ClubItem(name: 'EDC', ab:'EDC also known as the Entrepreneur Development Club, inspires youth to realize their dreams of starting up. We as a team believe in challenging students towards entrepreneurship and creating an environment to own and being independent'),
    ClubItem(name: 'PAC', ab:'At Torqscrew, we are all about creating innovative, high-performance go-karts that look cool and perform even better. We are keen on power electronics due to our unique educational background. And we are not stopping there! In the future, we plan to create our battery management system and motor controller to elevate our game to the next level. But for us, its not just about winning competitions; its about inspiring a new generation of motorsports enthusiasts who share our passion for innovation and creativity. We are committed to using our skills and knowledge to create an unforgettable experience for all who share our love for motorsport'),
    ClubItem(name: 'GDSC', ab:'At GDSC, we are passionate about our peers learning technology and connect. Leads pursue various degrees within undergratuate and graduate programs, but have foundational knowledge about software development'),
    ClubItem(name: 'CSI', ab:'Computer Society of India (CSI) is the first and largest body of computer professionals in India. And hence PCSB aims to Facilitate Research, Knowledge Sharing, Learning and Career Enhancement among all categories of Tech professionals.'),
    ClubItem(name: 'IEEE', ab:'PISB aims to escalate the knowledge of developments and trends in the diverse field of technologies amongst its student members. PISB has more than 350 student members this year. Kick- started with the membership drive, PISB upholds two major events- Credenz and Credenz Tech Dayz, along with many seminars, workshops, sections congress, innovative computing events and membership drives held round the year'),
    ClubItem(name: 'Robotics', ab:'Founded in 2008, PICT Robotics is a team of highly driven automation enthusiasts, building unique and functional robots through innovative combinations of Software and Mechatronics. We actively participate in the prestigious Asia-Pacific Robot Contest (ABU Robocon) annually. Robotic automation is core to building a Sustainable Utopian future, and we’re making constructive contributions to the process. In our pursuit, we aim to enhance the technical skills of our team members while helping them gain industrial experience and exposure to international competitions.'),
    ClubItem(name: 'GameDev-Utopia', ab:'We aim to develop a community of people who are enthusiastic for developing video-games and make them aware about the domain of Game Development, and realize its importance as a flourishing industry.'),
    ClubItem(name: 'PASC', ab:'ACM PICT is a student chapter organization subsidiary of Association for Computing Machinery a worldwide learning society for computing. The chapter was founded in March 1, 2011. It was started with a vision to carry on ACM internationals intentions on a grass root level in PICT. Our main focus has been on holding numerous events which are to spread computing and technical knowledge in the undergraduate level.'),
    ClubItem(name: 'Pictoreal', ab:'PICTs Annual Magazine, Thoughts, Colours and Words!'),
    ClubItem(name: 'DebSoc', ab:'PICT DebSoc, the official Debate Society of PICT, was founded in 2019 by a group of enthusiastic pioneers looking to introduce a platform where the students of PICT could not only enhance their confidence at self-expression through speech, but also engage in intellectually stirring discussions and debate with fellow members of the Society and beyond.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text(
      'Clubs of PICT',
      style: TextStyle(
        color: Colors.grey[900],
      ),
    ),
        backgroundColor: Colors.cyanAccent[700],
      ),
        drawer: AppDrawer(),
        body: ListView.builder(itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                  title: Text('${items[index].name}',
                    style: TextStyle(color: Colors.teal[800]
                    ),
                  ),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('About the Club', style: (TextStyle(color: Colors.white
                          )
                          ),
                          ),
                          content: Text('${items[index].ab}', style:(TextStyle(color: Colors.white
                          )
                          ),
                          ),
                          backgroundColor: Colors. teal[800] ,
                          actions: <Widget>[
                            TextButton(
                              child: Text('Close', style:(TextStyle(color: Colors.white
                              )
                              ),),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text('Register', style:(TextStyle(color: Colors.redAccent
                              )
                              ),),
                              onPressed: () async {
                                var url=Uri.parse('https://chat.whatsapp.com/CPB5lZjvea8DuS9C91Gcfo');
                               await launchUrl(url);
                              },
                            ),
                          ],
                        );
                      },

                    );
                  }
              );
            })
    );
  }
}

class ClubItem {
  String name;
  String ab;

  ClubItem({required this.name, required this.ab});
}