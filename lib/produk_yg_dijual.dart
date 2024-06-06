import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(94, 152, 135, 1.0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Row(
            children: [
              BackButton(color: Colors.black),
            ],
          ),
          actions: [
            PopupMenuButton(
              itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                PopupMenuItem(
                  child: Text('Edit', style: TextStyle(fontSize: 16)),
                  value: 'edit',
                ),
                PopupMenuItem(
                  child: Text('Sold', style: TextStyle(fontSize: 16)),
                  value: 'sold',
                ),
              ],
              icon: Icon(Icons.more_vert, color: Colors.black, size: 30),
              onSelected: (value) {
                if (value == 'edit') {
                  // Handle edit action
                } else if (value == 'sold') {
                  // Handle sold action
                }
              },
              iconSize: 30,
            ),
          ],
          title: Text(''),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.person, color: Colors.white, size: 35),
                  SizedBox(width: 8),
                  Text(
                    'Andhika',
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 16),
              Stack(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/realme23.jpeg',
                      height: 250,
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: -15,
                    top: 80,
                    child: IconButton(
                      icon: Icon(Icons.arrow_left, color: Colors.white, size: 45),
                      onPressed: () {
                        // Handle left arrow action
                      },
                    ),
                  ),
                  Positioned(
                    right: -15,
                    top: 80,
                    child: IconButton(
                      icon: Icon(Icons.arrow_right, color: Colors.white, size: 45),
                      onPressed: () {
                        // Handle right arrow action
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text(
                'Lenovo 22',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.attach_money, color: Colors.white, size: 30),
                  SizedBox(width: 8),
                  Text(
                    'Harga: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Rp. 4.000.000',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.visibility, color: Colors.white, size: 30),
                  SizedBox(width: 8),
                  Text(
                    '120 dilihat',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.description, color: Colors.white, size: 30),
                  SizedBox(width: 8),
                  Text(
                    'Deskripsi: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'hp keren no minus',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.location_on, color: Colors.white, size: 30),
                  SizedBox(width: 8),
                  Text(
                    'Indramayu, Sindang',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.calendar_today, color: Colors.white, size: 30),
                  SizedBox(width: 8),
                  Text(
                    '13-05-2024',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.swap_horiz, color: Colors.white, size: 30),
                  SizedBox(width: 8),
                  Text(
                    'Barter: ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'Iya',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Icon(Icons.local_shipping, color: Colors.white, size: 30),
                  SizedBox(width: 8),
                  Text(
                    'Tidak',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
