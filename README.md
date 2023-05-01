# Materi Flutter Beginner

<img src="https://i.pinimg.com/originals/75/8f/1c/758f1cd8cede9c3e4711306fc030f4ce.gif"/></a>

Berisi materi flutter dasar untuk dokumentasi biar kalo lupa tinggal liat ni repo :v

Demo : [Link](https://jauhariq.github.io/Mobile-programming/)

## Daftar Isi
<img src="https://i.pinimg.com/originals/0d/0a/ae/0d0aae238b7f6f4b89a627375bdd2eeb.gif"/></a>
- [Flutter Basic](#flutter-basic)
  - [Hello World](#hello-world)
    - [tes](#tes)

## Flutter Basic

### Hello World
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
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/helloworld.JPG"/></a>
