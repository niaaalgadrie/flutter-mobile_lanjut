import 'package:flutter/material.dart';
import 'package:flutter_app/views/kelola_akun.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      // _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: Text('Akun', style: TextStyle(color: Colors.black)),
      //   centerTitle: true,
      // ),
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
          
          // Bagian Daftar Menu
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  title: Text('Kelola Akun'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => kelolaAkunView()),
                    );// Tambahkan aksi di sini
                  },
                ),
                ListTile(
                  title: Text('Notifikasi'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Tambahkan aksi di sini
                  },
                ),
                ListTile(
                  title: Text('Privacy Policy'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Tambahkan aksi di sini
                  },
                ),
                ListTile(
                  title: Text('Terms of Service'),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    // Tambahkan aksi di sini
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}