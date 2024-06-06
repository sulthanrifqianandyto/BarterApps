import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: HistoryScreen(),
    );
  }
}

class HistoryScreen extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'title': 'samsung 22',
      'delivery': 'bayar',
      'method': 'Barter',
      'price': 'Rp. 1.000.000',
      'date': '22-02-2024',
      'image': 'assets/samsung22.webp', // Make sure you have this image in your assets
    },
    {
      'title': 'vivo 22',
      'delivery': 'bayar',
      'method': 'Beli',
      'price': 'Rp. 1.000.000',
      'date': '22-02-2024',
      'image': 'assets/vivo22.jpg', // Make sure you have this image in your assets
    },
    {
      'title': 'realme 11',
      'delivery': 'gratis',
      'method': 'Beli',
      'price': 'Rp. 1.000.000',
      'date': '22-02-2024',
      'image': 'assets/realme11.jpg', // Make sure you have this image in your assets
    },
    {
      'title': 'realme 12',
      'delivery': 'tidak',
      'method': 'Barter',
      'price': 'Rp. 1.000.000',
      'date': '22-02-2024',
      'image': 'assets/realme12.webp', // Make sure you have this image in your assets
    },
    {
      'title': 'apple 12',
      'delivery': 'tidak',
      'method': 'Beli',
      'price': 'Rp. 1.000.000',
      'date': '22-02-2024',
      'image': 'assets/apple12.jpg', // Make sure you have this image in your assets
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Riwayat Barter / Beli',
          style: TextStyle(fontWeight: FontWeight.bold), // Set title text to bold
        ),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(217, 217, 217, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
      ),
      body: Container(
        color: Color.fromRGBO(94, 152, 135, 1.0), // Set the background color of the body
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image.asset(
                  item['image']!,
                  width: 60, // Increased width
                  height: 100, // Increased height
                ),
                title: Text(item['title']!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Delivery: ${item['delivery']}'),
                    Text(item['method']!),
                    Text('Harga: ${item['price']}'),
                    Text(item['date']!),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
