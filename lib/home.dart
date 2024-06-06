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
  bool isStarred1 = false;
  bool isStarred2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromRGBO(94, 152, 135, 1.0),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromRGBO(94, 152, 135, 1.0), // Memberikan warna abu-abu pada body
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Icon(Icons.person, size: 25),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Azhar',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              isStarred1 ? Icons.star : Icons.star_border,
                              color: isStarred1 ? Colors.black : null,
                            ),
                            onPressed: () {
                              setState(() {
                                isStarred1 = !isStarred1;
                                if (isStarred1) isStarred2 = false;
                              });
                            },
                          ),
                          SizedBox(width: 1),
                          PopupMenuButton(
                            itemBuilder: (BuildContext context) => [
                              PopupMenuItem(
                                child: Text("Report"),
                                value: "Report",
                              ),
                            ],
                            onSelected: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: Image.asset(
                          'assets/apple12.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                      ListTile(
                        title: Text('Apple 12 Pro Max'),
                        subtitle: Text('Harga: Rp. 11.000.000'),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: Card(
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            child: Icon(Icons.person, size: 25),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Rifqi',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              isStarred2 ? Icons.star : Icons.star_border,
                              color: isStarred2 ? Colors.black : null,
                            ),
                            onPressed: () {
                              setState(() {
                                isStarred2 = !isStarred2;
                                if (isStarred2) isStarred1 = false;
                              });
                            },
                          ),
                          SizedBox(width: 1),
                          PopupMenuButton(
                            itemBuilder: (BuildContext context) => [
                              PopupMenuItem(
                                child: Text("Report"),
                                value: "Report",
                              ),
                            ],
                            onSelected: (value) {
                              print(value);
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Expanded(
                        child: Image.asset(
                          'assets/vivo21.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                      ListTile(
                        title: Text('Vivo 21'),
                        subtitle: Text('Harga: Rp. 2.000.000'),
                        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home, color: Color.fromRGBO(94, 152, 135, 1.0)), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.message), onPressed: () {}),
            IconButton(icon: Icon(Icons.person), onPressed: () {}),
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
