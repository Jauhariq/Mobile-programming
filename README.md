# Membuat baris dan kolom

Buat sebuah file dengan nama baris_kolom.dart, kemudian buat tampilan seperti berikut

<img src="https://telegra.ph/file/f07ba768420a36cdcff4d.jpg"/>

ya langsung ajalah 

## lib/main.dart

```dart
import 'package:flutter/material.dart';
import 'baris_kolom.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Klinik',
      home: BarisKolom(),
    );
  }
}
```
## lib/baris_kolom.dart

```dart
import 'package:flutter/material.dart';

class BarisKolom extends StatelessWidget {
  const BarisKolom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Baris dan Kolom"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("Baris 1, Kolom 1"),
              Text("Baris 1, Kolom 2"),
              Text("Baris 1, Kolom 3")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("Baris 2, Kolom 1"),
              Text("Baris 2, Kolom 2"),
              Text("Baris 2, Kolom 3")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text("Baris 3, Kolom 1"),
              Text("Baris 3, Kolom 2"),
              Text("Baris 3, Kolom 3")
            ],
          ),
        ],
      ),
    );
  }
}
```

Hasilnya :

<img src="https://telegra.ph/file/10cb4e6fd8d63f34daf4a.jpg"/>
