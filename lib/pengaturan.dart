import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menonaktifkan logo debug
      home: Scaffold(
        backgroundColor: Color.fromRGBO(94, 152, 135, 1.0), // Mengubah warna background
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(94, 152, 135, 1.0),
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black, // Mengubah warna ikon menjadi hitam
            ),
            onPressed: () {},
          ),
          centerTitle: true,
          actions: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 25), // Tambahkan SizedBox untuk memberikan jarak ke bawah
              Text(
                'Pengaturan',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              IconText(
                icon: Icons.account_circle,
                text: 'Profile',
              ),
              SizedBox(height: 25),
              IconText(
                icon: Icons.shopping_cart,
                text: 'Riwayat Barter / Beli',
              ),
              SizedBox(height: 25),
              IconText(
                icon: Icons.monetization_on,
                text: 'Riwayat Terjual',
              ),
              SizedBox(height: 200),
              // Container berwarna biru untuk Logout dengan border
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 2), // Tambahkan border
                ),
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 80),
                child: Center(
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconText({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.black, // Mengubah warna ikon menjadi hitam
          size: 40,
        ),
        SizedBox(width: 3),
        Expanded(
          child: Container(
            height: 45,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Memindahkan ikon ke kanan
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                Icon(Icons.arrow_forward_ios, color: Colors.black), // Mengubah warna ikon menjadi hitam
              ],
            ),
          ),
        ),
      ],
    );
  }
}
