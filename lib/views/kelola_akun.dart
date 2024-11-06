import 'package:flutter/material.dart';
import 'package:flutter_app/utils/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: kelolaAkunView(),
    );
  }
}

class kelolaAkunView extends StatefulWidget {
  const kelolaAkunView({super.key});

  @override
  State<kelolaAkunView> createState() => _kelolaAkunViewState();
}

class _kelolaAkunViewState extends State<kelolaAkunView> {
  // int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      // _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Bagian Profil
          Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              children: [
                Container(
                  width: 120,
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.purple[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person, size: 40, color: Colors.grey),
                          SizedBox(width: 8),
                          Icon(Icons.person, size: 40, color: Colors.grey),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.person, size: 40, color: Colors.grey),
                          SizedBox(width: 8),
                          Icon(Icons.person, size: 40, color: Colors.grey),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Nama Lengkap',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Asal Universitas',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

         // Field Email
            Text(
              'Email',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 1),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: blueColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: blueColor),
                ),
              ),
            ),
            SizedBox(height: 17), 

          // Field Nama
            Text(
              'Nama',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 1),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: blueColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: blueColor),
                ),
              ),
            ),
            SizedBox(height: 17),

          // Field Nomor Telepon
          Text(
              'Nomor Telepon',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 1),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: blueColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: blueColor),
                ),
              ),
            ),
            SizedBox(height: 17),

          // Field Alamat
          Text(
              'Alamat',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 1),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: blueColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  borderSide: BorderSide(color: blueColor),
                ),
              ),
            ),
            SizedBox(height: 17),

         
         // Tombol Masuk
            Center(
              child: SizedBox(
                width: 218,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blueColor,
                    padding: EdgeInsets.symmetric(vertical: 0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    elevation: 5,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => kelolaAkunView()),
                    );// Aksi untuk tombol masuk
                  },
                   child: Text(
                      'Ubah Profil',
                      style: TextStyle(
                        fontFamily: "PoppinsBold",
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
  }
}