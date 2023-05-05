# Soal Latihan UI Dart

Berisi soal latihan UI flutter dasar untuk dokumentasi biar kalo lupa tinggal liat ni repo :v

## Daftar Isi

- [Soal Latihan 1](#soal-latihan-1)
- [Soal Latihan 2](#soal-latihan-2)
- [Soal Latihan 3](#soal-latihan-3)
- [Soal Latihan 4](#soal-latihan-4)
- [Soal Latihan 5](#soal-latihan-5)
- [Soal Latihan 6](#soal-latihan-6)
- [Soal Latihan 7](#soal-latihan-7)
- [Soal Latihan 8](#soal-latihan-8)
- [Soal Latihan 9](#soal-latihan-9)
- [Soal Latihan 10](#soal-latihan-10)
- [Soal Latihan 11](#soal-latihan-11)
- [Soal Latihan 12](#soal-latihan-12)
- [Soal Latihan 13](#soal-latihan-13)
- [Soal Latihan 14](#soal-latihan-14)
- [Soal Latihan 15](#soal-latihan-15)
- [Soal Latihan 16](#soal-latihan-16)
- [Soal Latihan 17](#soal-latihan-17)
- [Soal Latihan 18](#soal-latihan-18)
- [Soal Latihan 19](#soal-latihan-19)
- [Soal Latihan 20](#soal-latihan-20)
- [Soal Latihan 21](#soal-latihan-21)
- [Soal Latihan 22](#soal-latihan-22)
- [Soal Latihan 23](#soal-latihan-23)
- [Soal Latihan 24](#soal-latihan-24)

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

## Soal latihan 2
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal2.JPG">

Kodenya :

```dart
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
```

## Soal latihan 3
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal3.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal3());
}

class Soal3 extends StatelessWidget {
  const Soal3({super.key});

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
          // bikin widget ditengah
          child: FlutterLogo(
            // bikin flutter logo
            size: 200, // atur ukuran logo
          ),
        ),
      ),
    );
  }
}
```

## Soal latihan 4
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal4.JPG">

Kodenya :

```dart
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
```

## Soal latihan 5
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal5.JPG">

Kodenya :

```dart
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
```

## Soal latihan 6
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal6.JPG">

Kodenya :

```dart
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
```

## Soal latihan 7
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal7.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal7());
}

class Soal7 extends StatelessWidget {
  const Soal7({super.key});

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
        body: Row(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
            // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
            // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

            // cara pertama :
            // const SizedBox(
            // width: 20,
            //),
            Container(
              // cara kedua :
              margin: EdgeInsets.only(left: 20),
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
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
```

## Soal latihan 8
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal8.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal8());
}

class Soal8 extends StatelessWidget {
  const Soal8({super.key});

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
        body: Row(
          //mengatur posisi saling berjauhan tapi sisi ujungnya mentok
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
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
```

## Soal latihan 9
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal9.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal9());
}

class Soal9 extends StatelessWidget {
  const Soal9({super.key});

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
        body: Row(
          // atur posisinya ke end biar dia ke pojok samping kanan (defaultnya itu start alias pojok samping kiri)
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
            // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
            // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

            // cara pertama :
            // const SizedBox(
            // width: 20,
            //),
            Container(
              // cara kedua :
              margin: EdgeInsets.only(left: 20),
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
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
```

## Soal latihan 10
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal10.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal10());
}

class Soal10 extends StatelessWidget {
  const Soal10({super.key});

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
        body: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
            // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
            // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

            // cara pertama :
            const SizedBox(
              height: 20,
            ),
            Container(
              // cara kedua :
              //margin: EdgeInsets.only(left: 20),
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
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
```

## Soal latihan 11
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal11.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal11());
}

class Soal11 extends StatelessWidget {
  const Soal11({super.key});

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
        body: Column(
          //mengatur posisi saling berjauhan tapi sisi ujungnya mentok
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
            // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
            // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

            // cara pertama :
            //const SizedBox(
            //height: 20,
            //),
            Container(
              // cara kedua :
              //margin: EdgeInsets.only(left: 20),
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text(
                  "Hello",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
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
```

## Soal latihan 12
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal12.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal12());
}

class Soal12 extends StatelessWidget {
  const Soal12({super.key});

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
        body: Row(
          children: [
            Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
                // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
                // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

                // cara pertama :
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // cara kedua :
                  //margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
                // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
                // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

                // cara pertama :
                const SizedBox(
                  height: 20,
                ),
                Container(
                  // cara kedua :
                  //margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

## Soal latihan 13
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal13.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal13());
}

class Soal13 extends StatelessWidget {
  const Soal13({super.key});

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
                // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
                // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

                // cara pertama :
                const SizedBox(
                  width: 20,
                ),
                Container(
                  // cara kedua :
                  //margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
                // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
                // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

                // cara pertama :
                const SizedBox(
                  width: 20,
                ),
                Container(
                  // cara kedua :
                  //margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

## Soal latihan 14
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal14.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal14());
}

class Soal14 extends StatelessWidget {
  const Soal14({super.key});

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
                // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
                // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

                // cara pertama :
                const SizedBox(
                  width: 20,
                ),
                Container(
                  // cara kedua :
                  //margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
                // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
                // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

                // cara pertama :
                const SizedBox(
                  width: 20,
                ),
                Container(
                  // cara kedua :
                  //margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

## Soal latihan 15
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal15.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal15());
}

class Soal15 extends StatelessWidget {
  const Soal15({super.key});

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
                // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
                // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

                // cara pertama :
                const SizedBox(
                  width: 20,
                ),
                Container(
                  // cara kedua :
                  //margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            FlutterLogo(
              size: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.amber,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
                // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
                // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

                // cara pertama :
                const SizedBox(
                  width: 20,
                ),
                Container(
                  // cara kedua :
                  //margin: EdgeInsets.only(left: 20),
                  width: 150,
                  height: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Hello",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
```

## Soal latihan 16
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal16.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal16());
}

class Soal16 extends StatelessWidget {
  const Soal16({super.key});

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
              // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
              // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

              // cara pertama :
              const SizedBox(
                height: 20,
              ),
              Container(
                // cara kedua :
                //margin: EdgeInsets.only(left: 20),
                width: 150,
                height: 150,
                color: Colors.amber,
                child: const Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
              // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
              // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

              // cara pertama :
              const SizedBox(
                height: 20,
              ),
              Container(
                // cara kedua :
                //margin: EdgeInsets.only(left: 20),
                width: 150,
                height: 150,
                color: Colors.amber,
                child: const Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              // ada 2 cara untuk ngasih jarak antara container kiri dan kanan
              // cara pertama yaitu dengan menambahkan widget Sizebox diantara/ditengah-tengah dua container
              // atau cara kedua yaitu memberi margin pada salah satu widget container sebagai contoh dibawah

              // cara pertama :
              const SizedBox(
                height: 20,
              ),
              Container(
                // cara kedua :
                //margin: EdgeInsets.only(left: 20),
                width: 150,
                height: 150,
                color: Colors.amber,
                child: const Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Soal latihan 17
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal17.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal17());
}

class Soal17 extends StatelessWidget {
  const Soal17({super.key});

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
        body: GridView.builder(
          itemCount: 50,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemBuilder: ((context, index) {
            if (index % 2 == 0) {
              return Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
              );
            } else {
              return Container(
                width: 150,
                height: 150,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    "Hello",
                    style: TextStyle(fontSize: 50, color: Colors.black),
                  ),
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
```

## Soal latihan 18
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal18.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal18());
}

class Soal18 extends StatelessWidget {
  const Soal18({super.key});

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
        body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 50,
          itemBuilder: ((context, index) {
            if (index % 2 == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: Colors.blue,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hello ${index + 1}",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 150,
                      color: Colors.amber,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Hello ${index + 1}",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              );
            }
          }),
        ),
      ),
    );
  }
}
```

## Soal latihan 19
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal19.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal19());
}

class Soal19 extends StatelessWidget {
  const Soal19({super.key});

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
        body: ListView.builder(
          padding: EdgeInsets.all(20),
          itemCount: 50,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.bottomLeft,
              height: 150,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey,
                  image: DecorationImage(
                    fit: BoxFit.cover, // bikin gambarnya penuh
                    image: NetworkImage(
                      "https://picsum.photos/id/${777 + index}/200/300",
                    ),
                  )),
              child: Text(
                "Hello ${index + 1}",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```

## Soal latihan 20
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal20.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal20());
}

class Soal20 extends StatelessWidget {
  const Soal20({super.key});

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
        body: Stack(
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.green,
            ),
            Container(
              width: 225,
              height: 225,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.purple,
            ),
            Container(
              width: 175,
              height: 175,
              color: Colors.amber,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
```

## Soal latihan 21
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal21.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal21());
}

class Soal21 extends StatelessWidget {
  const Soal21({super.key});

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
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: Colors.green,
              ),
              Container(
                width: 225,
                height: 225,
                color: Colors.red,
              ),
              Container(
                width: 200,
                height: 200,
                color: Colors.purple,
              ),
              Container(
                width: 175,
                height: 175,
                color: Colors.amber,
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Soal latihan 22
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal22.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal22());
}

class Soal22 extends StatelessWidget {
  const Soal22({super.key});

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
            child: Container(
              height: 250,
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250 / 2),
                  border: Border.all(
                    color: Color(0xFF0D47A1),
                    width: 10,
                  ),
                  color: Colors.grey[300],
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/gambar1.png",
                    ),
                  )),
            ),
          )),
    );
  }
}
```

## Soal latihan 23
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal23.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal23());
}

class Soal23 extends StatelessWidget {
  const Soal23({super.key});

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      width: 265,
                      height: 265,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                  Container(
                    height: 250,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(250 / 2),
                      border: Border.all(
                        color: Colors.white,
                        width: 5,
                      ),
                      color: Colors.grey[300],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          "assets/gambar1.png",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Hello World",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Soal latihan 24
<img src="https://github.com/Jauhariq/Mobile-programming/raw/latihan-soal/assets/soal24.JPG">

Kodenya :

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const Soal24());
}

class Soal24 extends StatelessWidget {
  const Soal24({super.key});

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
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                top: 20,
                left: 20,
                bottom: 20,
              ),
              height: 140,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return Container(
                      width: 100,
                      height: 120,
                      color: Colors.blue,
                      margin: EdgeInsets.only(right: 20),
                    );
                  } else {
                    return Container(
                      width: 100,
                      height: 120,
                      color: Colors.amber,
                      margin: EdgeInsets.only(right: 20),
                    );
                  }
                },
              ),
              //color: Colors.green,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.all(20),
                itemCount: 50,
                itemBuilder: ((context, index) {
                  if (index % 2 == 0) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            color: Colors.blue,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Hello ${index + 1}",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    );
                  } else {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 150,
                            color: Colors.amber,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Hello ${index + 1}",
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```
