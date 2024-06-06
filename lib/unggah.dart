import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isBarterActive = false;
  bool isJualActive = false;
  bool isDeliveryActive = false;
  bool isTidakActive = false;
  bool isGratisActive = false;
  bool isBayarActive = false;

  void toggleButtonState(bool isBarter) {
    setState(() {
      isBarterActive = isBarter;
      isJualActive = !isBarter;
    });
  }

  void toggleDeliveryState() {
    setState(() {
      isDeliveryActive = !isDeliveryActive;
      isTidakActive = false;
      isGratisActive = false;
      isBayarActive = false;
    });
  }

  void toggleTidakState() {
    setState(() {
      isDeliveryActive = false;
      isTidakActive = !isTidakActive;
      isGratisActive = false;
      isBayarActive = false;
    });
  }

  void toggleGratisState() {
    setState(() {
      isDeliveryActive = false;
      isTidakActive = false;
      isGratisActive = !isGratisActive;
      isBayarActive = false;
    });
  }

  void toggleBayarState() {
    setState(() {
      isDeliveryActive = false;
      isTidakActive = false;
      isGratisActive = false;
      isBayarActive = !isBayarActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(94, 152, 135, 1.0),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 40,
              left: 16,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Icon(
                  size: 30,
                  Icons.arrow_back,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 37),
                child: Text(
                  'New Post',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 85),
                child: Text(
                  'Gambar Barang Anda',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 130),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.arrow_left,
                      size: 30,
                      color: Colors.white,
                    ),
                    Container(
                      width: 60,
                      height: 65,
                      color: Color.fromRGBO(217, 217, 217, 1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/add-image.png',
                            width: 30,
                            height: 30,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 65,
                      color: Color.fromRGBO(217, 217, 217, 1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/add-image.png',
                            width: 30,
                            height: 30,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 65,
                      color: Color.fromRGBO(217, 217, 217, 1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/add-image.png',
                            width: 30,
                            height: 30,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 65,
                      color: Color.fromRGBO(217, 217, 217, 1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/add-image.png',
                            width: 30,
                            height: 30,
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Add',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_right,
                      size: 30,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 210),
                child: SingleChildScrollView( // Tambahkan SingleChildScrollView di sini
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 30.0), // Tambahkan padding bawah
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // Input field for Nama
                        Container(
                          width: 280,
                          height: 50,
                          color: Color.fromRGBO(217, 217, 217, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Nama',
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        // Input field for Deskripsi
                        Container(
                          width: 280,
                          height: 80,
                          color: Color.fromRGBO(217, 217, 217, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Deskripsi',
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            maxLines: null,
                          ),
                        ),
                        SizedBox(height: 10),
                        // Input field for Harga
                        Container(
                          width: 280,
                          height: 50,
                          color: Color.fromRGBO(217, 217, 217, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Harga',
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        SizedBox(height: 10),
                        // Input field for Lokasi
                        Container(
                          width: 280,
                          height: 70,
                          color: Color.fromRGBO(217, 217, 217, 1.0),
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Lokasi',
                              hintStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 0),
                            child: Text(
                              'Pilih kategori barang anda',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional.topCenter,
                              child: Padding(
                                padding: EdgeInsets.only(top: 23),
                                child: Container(
                                  width: 280,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(217, 217, 217, 1.0),
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(color: Colors.blue, width: 2),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Pilih Kategori',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30,
                              top: 10,
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.blue.withOpacity(1),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        // Additional buttons (BARTER and JUAL)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomButton(
                              onPressed: () {
                                toggleButtonState(true);
                              },
                              text: 'BARTER',
                              isActive: isBarterActive,
                              textColor: isBarterActive ? Colors.white : Colors.black,
                            ),
                            CustomButton(
                              onPressed: () {
                                toggleButtonState(false);
                              },
                              text: 'JUAL',
                              isActive: isJualActive,
                              textColor: isJualActive ? Colors.white : Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        // Additional buttons (DELIVERY, TIDAK, GRATIS, BAYAR)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                toggleDeliveryState();
                              },
                              child: Text(
                                'DELIVERY',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            CustomButton(
                              onPressed: () {
                                toggleTidakState();
                              },
                              text: 'TIDAK',
                              isActive: isTidakActive,
                              textColor: isTidakActive ? Colors.white : Colors.black,
                            ),
                            CustomButton(
                              onPressed: () {
                                toggleGratisState();
                              },
                              text: 'GRATIS',
                              isActive: isGratisActive,
                              textColor: isGratisActive ? Colors.white : Colors.black,
                            ),
                            CustomButton(
                              onPressed: () {
                                toggleBayarState();
                              },
                              text: 'BAYAR',
                              isActive: isBayarActive,
                              textColor: isBayarActive ? Colors.white : Colors.black,
                            ),
                          ],
                        ),
                        SizedBox(height: 30), // Added SizedBox for spacing
                        // Upload button
                        SizedBox(
                          width: 280, // Ubah lebar sesuai kebutuhan Anda
                          child: ElevatedButton(
                            onPressed: () {
                              // Add upload functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0), // Sesuaikan padding sesuai kebutuhan Anda
                              child: Text(
                                'UPLOAD',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom button widget
class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isActive;
  final Color? textColor;

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.isActive,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 80,
        height: 45,
        color: isActive ? Colors.blue : Colors.white70,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: isActive ? textColor : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
