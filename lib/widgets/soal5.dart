import 'package:flutter/material.dart';

void main() {
  runApp(const Soal5());
}

class Soal5 extends StatelessWidget {
  const Soal5({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //hilangin wm debug
      home: Scaffold(
        appBar: AppBar(
          leading:
              const FlutterLogo(), // leading buat widget berada di pojok kiri
          title: const Text("Aplikasiku"),
          actions: [
            //buat widget berada di pojok kanan
            IconButton(
              //bikin tombol icon
              onPressed: () {
                //fungsi yang akan di jalanakan ketika di klik
                print("Klik Cuy");
              },
              icon: const Icon(Icons.more_vert), //iconnnya
            ),
          ],
        ),
        body: Center(
          // bikin widget ditengah
          child: Container(
            // bikin kotak
            color: Colors.blue, // atur warna
            width: 250, // atur lebar
            height: 250, // atur tinggi
            child: const Center(
              // atur ketengah containernya
              child: Text(
                // bikin text
                "Hello",
                style: TextStyle(
                  // atur style
                  fontSize: 50, // atur ukuran font
                  color: Colors.white, // atur warna text
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
