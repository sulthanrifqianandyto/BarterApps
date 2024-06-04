import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(94, 152, 135, 1.0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Search',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Search',
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                BrandTile(
                  imagePath: 'assets/samsung.png',
                  brandName: 'Samsung',
                ),
                BrandTile(
                  imagePath: 'assets/vivo.png',
                  brandName: 'Vivo',
                ),
                BrandTile(
                  imagePath: 'assets/realme.png',
                  brandName: 'Realmi',
                ),
                BrandTile(
                  imagePath: 'assets/huawei.png',
                  brandName: 'Huawei',
                ),
                BrandTile(
                  imagePath: 'assets/xiaomi.png',
                  brandName: 'xiaomi',
                ),
                BrandTile(
                  imagePath: 'assets/oppo.png',
                  brandName: 'Oppo',
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromRGBO(94, 152, 135, 1.0),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, color: Colors.black),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.black),
            label: '',
          ),
        ],
      ),
    );
  }
}

class BrandTile extends StatelessWidget {
  final String imagePath;
  final String brandName;

  BrandTile({required this.imagePath, required this.brandName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListTile(
          leading: Image.asset(imagePath, width: 40),
          title: Text(brandName),
        ),
      ),
    );
  }
}