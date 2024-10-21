import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Warna latar belakang
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Logo di atas
              Image.asset(
                'assets/logo.png', // Tempatkan logo UNDiknas di folder assets
                height: 310,
              ),
              SizedBox(height: 20),
              
              // Membatasi lebar kotak input
              SizedBox(
                width: 500, // Atur lebar kotak input
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: Colors.amber),
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: 500, // Atur lebar kotak input
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.vpn_key, color: Colors.amber),
                    labelText: 'Password',
                    suffixIcon: Icon(Icons.visibility),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(height: 20),
              
              // Tombol Login
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 150),
                  backgroundColor: Colors.blue[900], // Warna biru gelap
                ),
                child: Text('Login'),
              ),
              SizedBox(height: 20),
              
              // Link Mahasiswa Baru dan Lupa Password
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Text('Mahasiswa Baru ? Klik disini'),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: Text('Lupa password'),
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
