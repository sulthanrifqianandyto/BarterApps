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
        appBar: AppBar(
          title: Text('Registrasi', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        body: Container(
          color: Colors.green[900],
          child: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text('Registrasi', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 20),
                Text('Nama Pengguna', style: TextStyle(color: Colors.white)),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Nama Pengguna',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),
                Text('Password', style: TextStyle(color: Colors.white)),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),
                Text('Ulangi Password', style: TextStyle(color: Colors.white)),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Ulangi Password',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),
                Text('No Telepon/HP', style: TextStyle(color: Colors.white)),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'No Telepon/HP',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),
                Text('Alamat', style: TextStyle(color: Colors.white)),
                TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Alamat',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
                SizedBox(height: 20),
                Text('Tambah Foto KTP', style: TextStyle(color: Colors.white)),
                SizedBox(height: 20),
                Container(
                  height: 100,
                  color: Colors.grey[200],
                  child: Center(
                    child: Text('Tambah Foto KTP', style: TextStyle(color: Colors.grey)),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    onPrimary: Colors.white,
                  ),
                  child: Text('Daftar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}