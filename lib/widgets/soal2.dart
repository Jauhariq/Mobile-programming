import 'package:flutter/material.dart';

void main() {
  runApp(const Soal2());
}

class Soal2 extends StatelessWidget {
  const Soal2({super.key});

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
        body: const Center(
          child: Text(
            "Hello World",
            style: TextStyle(
              //atur style
              fontSize: 50, //atur ukuran font
              fontStyle: FontStyle.italic, //atur huruf miring
              decoration: TextDecoration.underline, //atur garis bawah
              fontWeight: FontWeight.bold, //bikin huruf tebal
            ),
          ),
        ),
      ),
    );
  }
}
