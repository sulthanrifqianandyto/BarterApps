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
  int _selectedIndex = 4;

  static List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Upload Page'),
    Text('Chat Page'),
    ProfilePage(),
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
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.message), onPressed: () {}),
            Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(icon: Icon(Icons.person, color: Color.fromRGBO(94, 152, 135, 1.0)), onPressed: () {}),              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
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
                  Text('Favorites', style: TextStyle(fontSize: 20, color: Colors.white)),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Color.fromRGBO(76, 175, 80, 1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
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
