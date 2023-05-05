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
