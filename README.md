# Soal Latihan UI Dart

Berisi soal latihan UI flutter dasar untuk dokumentasi biar kalo lupa tinggal liat ni repo :v

## Daftar Isi

- [Soal Latihan 1](#soal-latihan-1)

## Soal latihan 1
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal1.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal1());
}

class Soal1 extends StatelessWidget {
  const Soal1({super.key});

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
            ),
          ),
        ),
      ),
    );
  }
}

```
