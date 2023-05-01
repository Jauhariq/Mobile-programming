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
Semua class pada flutter bisa kita sebut sebagai widget, kalau dianalogikan jika di meja kita sekarang ada secangkir kopi, maka secngkir kopi tersebut adalah widget. Namun, perlu diperhatikan dari secangkir kopi tersebut, bahwa itu semua terdiri dari widget cangkir, widget kopi, widget air, dan widget gula.
### MaterialApp
Oke jadi MaterialApp ini merupakan widget yang paling penting, kenapa? karena widget ini berfungsi sebagai wadah kita dalam membuat tampilan aplikasi. Kalau dianalogikan, widget ini berfungsi sebagai papan kayu untuk melukis.
