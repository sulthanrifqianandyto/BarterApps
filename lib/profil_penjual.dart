import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 4; // Set initial index to Profile tab

  static List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Upload Page'), // Change to upload text or widget
    Text('Chat Page'),
    ProfilePage(), // The profile page as your initial page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(94, 152, 135, 1.0),
        centerTitle: true,
        title: Text('Andhika'),
        actions: [
          PopupMenuButton<String>(
            onSelected: (value) {
              // Handle menu item selections here
              if (value == 'Blok') {
                // Handle Blok action
                print('Blok selected');
              } else if (value == 'Report') {
                // Handle Report action
                print('Report selected');
              }
            },
            itemBuilder: (BuildContext context) {
              return {'Blok', 'Report'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
      ),
      body: Container(
        color: Color.fromRGBO(94, 152, 135, 1.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: Icon(Icons.person, size: 50),
                  ),
                  SizedBox(height: 10),
                  Text('Chat', style: TextStyle(fontSize: 20, color: Colors.white)),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        FavoriteItem('realme 23', 'assets/realme23.jpeg'),
                        FavoriteItem('vivo 21', 'assets/vivo21.webp'),
                        FavoriteItem('huawei 22', 'assets/huawei22.avif'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  final String title;
  final String imagePath;

  FavoriteItem(this.title, this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(imagePath, width: 80, height: 80),
          SizedBox(height: 10),
          Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
