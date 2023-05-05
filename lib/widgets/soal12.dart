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
