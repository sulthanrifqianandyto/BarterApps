import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Hapus logo debug
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(94, 152, 135, 1.0),
        leading: IconButton(
          icon: Icon(
            size: 30,
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            // Add your back button functionality here
          },
        ),
      ),
      body: Container(
        color: Color.fromRGBO(94, 152, 135, 1.0), // Ubah warna background
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Profile',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Icon(
                Icons.account_circle,
                size: 100,
                color: Colors.black,
              ),
              SizedBox(height: 5),
              Text(
                'Andhika@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40),
              Text(
                'No. Handphone',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Nama',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 70,
                margin: EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                'Bio',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 5),
              Container(
                height: 150,
                margin: EdgeInsets.symmetric(horizontal: 7),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                height: 50,
                margin: EdgeInsets.symmetric(horizontal: 80),
                color: Colors.blue,
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      // Add your button functionality here
                    },
                    child: Text(
                      'Selesai',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
