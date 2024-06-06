import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Menghapus logo debug
      home: ChatScreen(),
    );
  }
}

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF77A391),
      appBar: AppBar(
        title: Text(
          'Chat',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Memposisikan teks di tengah app bar
        backgroundColor: Color(0xFF77A391),
        elevation: 0,
      ),
      body: ListView(
        children: [
          _buildChatItem("Rifqi", "Hi. Apakah produk masih tersedia", "12.12"),
          _buildChatItem("Azhar", "apakah produk dapat dibarter dengan hp samsung 5g?", "23.10"),
          _buildChatItem("Farhan", "Apakah ada potongan harga?", "09.50"),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home), onPressed: () {}),
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            // Mengubah warna ikon chat menjadi putih
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(icon: Icon(Icons.message, color: Color.fromRGBO(94, 152, 135, 1.0)), onPressed: () {}),              ],
            ),
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

  Widget _buildChatItem(String name, String message, String time) {
    return Column(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, color: Colors.grey),
          ),
          title: Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(message),
          trailing: Text(
            time,
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ),
        Divider(color: Colors.white24),
      ],
    );
  }
}
