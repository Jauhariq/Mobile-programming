# Materi Flutter Beginner

<img src="https://i.pinimg.com/originals/75/8f/1c/758f1cd8cede9c3e4711306fc030f4ce.gif"/>

Berisi materi flutter dasar untuk dokumentasi biar kalo lupa tinggal liat ni repo :v

Demo : [Link](https://jauhariq.github.io/Mobile-programming/)

## Daftar Isi
<img src="https://i.pinimg.com/originals/0d/0a/ae/0d0aae238b7f6f4b89a627375bdd2eeb.gif"/>

- [Flutter Basic](#flutter-basic)
  - [Hello World](#hello-world)
  - [Widget Dasar](#widget-dasar)
    - [MaterialApp](#materialapp)
    - [Scaffold](#scaffold)
    - [AppBar](#appbar)
    - [Container](#container)
    - [Text](#text)
    - [FlutterLogo](#flutterLogo)
    - [ElevatedButton](#elevatedbutton)
    - [Icon](#icon)
    - [Image](#image)
  - [Visible vs Invisible Widget](#visible-vs-invisible-widget)
    - [Visible Widget](#visible-widget)
    - [Invisible Widget (Layouting Widget)](#invisible-widget)
      - [Center](#center)

## Flutter Basic
Flutter merupakan sebuah tools (Software Development Kit) yang digunakan untuk membuat beragam aplikasi (Website, Android Mobile, IOS Apps, dan Desktop Apps) hanya dengan satu basis pengkodean (single code base). Flutter merupakan project open-source yang diperlihara oleh Google sejak 2018, walaupun sudah ada versi alpha pada tahun 2017. Dan teknologi Flutter ini menggunakan bahasa pemograman Dart yang digunakan sebagai pengganti Javascript yang dinilai masih banyak memiliki kekurangan.

## Hello World
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
```
hasilnya : 
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/helloworld.JPG"/>

## Widget Dasar
Semua class pada flutter bisa kita sebut sebagai widget, kalau dianalogikan jika di meja kita sekarang ada secangkir kopi, maka secangkir kopi tersebut adalah widget. Namun, perlu diperhatikan dari secangkir kopi tersebut, bahwa itu semua terdiri dari widget cangkir, widget kopi, widget air, dan widget gula.
### MaterialApp
Oke jadi MaterialApp ini merupakan widget yang paling penting, kenapa? karena widget ini berfungsi sebagai wadah kita dalam membuat tampilan aplikasi. Kalau dianalogikan, widget ini berfungsi sebagai papan kayu untuk melukis.
### Scaffold
Jika widget MaterialApp merupakan papan kayu untuk melukis, maka widget Scaffold ini bisa diumpamakan sebagai canvas untuk melukisnya.
### AppBar
Buat bikin aplikasi bar atau navbar pake widget appbar taro di dalam scaffold
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown, //warna appbar
          title: Text("Aplikasiku"), //judul appbar
          centerTitle: true, //buat bikin tulisan di tengah, ubah ke false atau hapus aja nanti defaultnya di kiri
        ),
        backgroundColor: Colors.blueGrey, //warna scaffold/background layar
        body: Center( //bikin tulisan ditengah
          child: Text("Hello World"), //widget text buat nampilin tulisan
        ),
      ),
    );
  }
}
```
Hasilnya :
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/appbar.JPG"/>
### Container
container buat bikin space atau kotak jika di warnain
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown, //warna appbar
          title: Text("Aplikasiku"), //judul appbar
          centerTitle: true, //buat bikin tulisan di tengah, ubah ke false atau hapus aja nanti defaultnya di kiri
        ),
        backgroundColor: Colors.blueGrey, //warna scaffold/background layar
        body: Center( //bikin tulisan ditengah
          child: Container( 
            width: 200, //atur lebar container
            height: 200, //atur tinggi container
            color: Colors.greenAccent, //warna container
            child: Center(child: Text("Hello World!")), //widget text buat nampilin tulisan
          ),
        ),
      ),
    );
  }
}
```
Hasilnya :
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/container.JPG"/>
### Text
Widget buat nampilin Tulisan
```dart
Text("Hello World"),
```
### FlutterLogo
Buat nampilin flutter logo pake widget FlutterLogo
```dart
FlutterLogo(
size: 200, //atur ukuran logo
),
```
Hasilnya : 
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/flutterlogo.JPG"/>
### ElevatedButton
Buat bikin button
```dart
ElevatedButton(
            onPressed: () {
              //akan ngejalanin sebuah function jika di klik
              print("di klik"); //akan tampil di debug console
            },
            child: Text("Klik Akuh"), //tulisan di buttonnya
          ),
```
Hasilnya : 
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/elevatedbutton.JPG"/>
### Icon
```dart
Icon(
            Icons.add_alarm, //pilih iconnya
            size: 200, //atur sizenya
            color: Colors.red, //atur warnanya
          ),
```
Hasilnya : 
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/icon.JPG"/>
### Image
Buat nampilin gambar
ada 4 image provider :
1. Assets image
   -> gambar yang ada pada folder project
   -> perlu di daftar atau ditambahkan di pubspec.yaml
```dart
Image(
            image: AssetImage("assets/gambar1.png"),
          ),
```
atau pake cara cepet
```dart
Image.asset("assets/gambar1.png"),
```
Hasilnya : 
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/image.JPG"/>
2. Network Image
-> ambil dari internet
-> aplikasi butuh koneksi internet
```dart
Image(
image: NetworkImage("https://linknya.com"),
        ),
```
atau pake cara cepet
```dart
Image.network("https://linknya.com"),
```
jarang digunakan -> pada kasus tertentu saja
3. file image
4. memory image

## Visible vs Invisible Widget
### Visible Widget
Jadi ini widget yang keliatan atau tampil ketika aplikasi dijalankan seperti widget AppBar , Container (Jika diberi warna), Text , FlutterLogo , ElevatedButton , Icon , Image , dll.
### Invisible Widget
Widget yang tidak terlihat ketika aplikasi dijalankan namun widget itu ada, seperti :
### Center
Buat bikin widget yang ada di child itu ditengah , sebagai contoh didalam child ada widget Text maka tulisan Hello World bakalan jadi ditengah.
```dart
Center(
          child: Text("Hello World"),
        ),
```
