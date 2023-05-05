import 'package:flutter/material.dart';

void main() {
  runApp(const Soal6());
}

class Soal6 extends StatelessWidget {
  const Soal6({super.key});

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

          // ada dua cara untuk bikin lingkaran :
          // cara pertama yaitu bungkus widget container dengan widget ClipOval
          // atau cara kedua yaitu tetap di widget container tanpa dibungkus widget apapun kemudian didalam widget container tambahkan decoration seperti kode dibawah
          child: Container(
            // bikin kotak
            //color: Colors.blue, // atur warna
            width: 250, // atur lebar
            height: 250, // atur tinggi
            decoration: BoxDecoration(
              color: Colors
                  .blue, // warna kontainernya dipindah ke dalam boxdecoration biar ga eror
              borderRadius: BorderRadius.circular(
                  250 / 2), // atur radiusnya sesuai ukuran
            ),
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
