import 'dart:math'; // untuk menggunakan pi

import 'package:flutter/material.dart';

void main() {
  runApp(const Soal4());
}

class Soal4 extends StatelessWidget {
  const Soal4({super.key});

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
          child: Transform.rotate(
            // atur rotasi
            // jika ingin menggunakan rumus seperti ini
            // misalnya 70 derajat rumusnya : pi / (180/70)
            // 90 derajat : pi / (180/90) atau pi / 2
            angle: pi / 2, // atur kemiringan , pi = 180 derajat
            child: const FlutterLogo(
              // bikin flutter logo
              size: 200, // atur ukuran logo
            ),
          ),
        ),
      ),
    );
  }
}
