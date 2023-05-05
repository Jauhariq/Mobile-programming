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
