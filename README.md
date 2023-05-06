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
      - [Column](#column)
      - [Row](#row)
      - [Stack](#stack)
      - [SingleChildScrollView](#singlechildscrollview)
      - [ListView](#listview)
  - [Stateless vs Stateful](#stateless-vs-stateful)
  - [Dialog](#dialog)
  - [SnackBar](#snackbar)
  - [TextField](#textfield)
  - [TabBar](#tabbar)

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

<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/MaterialApp.JPG"/>

### Scaffold
Jika widget MaterialApp merupakan papan kayu untuk melukis, maka widget Scaffold ini bisa diumpamakan sebagai canvas untuk melukisnya.

<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/scaffold.JPG"/>

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
Untuk hasil dari kode widget Text sudah sama seperti materi [Hello World](#hello-world) di atas 
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
Untuk hasil dari kode widget center sudah sama seperti materi [Hello World](#hello-world) di atas 
### Column
Untuk menyusun satu atau lebih widget secara vertical.
```dart
Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.greenAccent,
              child: const Center(
                child: Text("Kotak 1"),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.white,
              child: const Center(
                child: Text("Kotak 2"),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.amber,
              child: const Center(
                child: Text("Kotak 3"),
              ),
            ),
          ],
        ),
```
Hasilnya : 
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/column.JPG"/>
### Row
Untuk menyusun satu atau lebih widget secara Horizontal.
```dart
Row(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.greenAccent,
              child: const Center(
                child: Text("Kotak 1"),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.white,
              child: const Center(
                child: Text("Kotak 2"),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.amber,
              child: const Center(
                child: Text("Kotak 3"),
              ),
            ),
          ],
        ),
```
Hasilnya :
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/row.JPG"/>
### Stack
Untuk menyusun satu atau lebih widget secara sumbu Z (depan - belakang) alias di tumpuk.
```dart
Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.greenAccent,
              child: const Center(
                child: Text("Kotak 1"),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
              child: const Center(
                child: Text("Kotak 2"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: const Center(
                child: Text("Kotak 3"),
              ),
            ),
          ],
        ),
```
Hasilnya : 
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/stack.JPG"/>
### SingleChildScrollView
Membuat widget menjadi bisa di scroll yang sebelumnya kelebihan layar atau muatan.
Contoh pada widget Column :
```dart
SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text("Kotak 1"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("Kotak 2"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Kotak 3"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text("Kotak 1"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("Kotak 2"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Kotak 3"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text("Kotak 1"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("Kotak 2"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Kotak 3"),
                ),
              ),
            ],
          ),
        ),
```
Hasilnya :
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/singlechildview.gif"/>

Contoh pada widget Row :
```dart
SingleChildScrollView(
          scrollDirection: Axis.horizontal, // tambah dan ubah scrolldirection menjadi horizontal
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text("Kotak 1"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("Kotak 2"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Kotak 3"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text("Kotak 1"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("Kotak 2"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Kotak 3"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.greenAccent,
                child: const Center(
                  child: Text("Kotak 1"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
                child: const Center(
                  child: Text("Kotak 2"),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: const Center(
                  child: Text("Kotak 3"),
                ),
              ),
            ],
          ),
        ),
```
Hasilnya :
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/scrolldirection.gif"/>
### ListView
Bikin widget secara otomatis bisa di scroll tanpa menggunakan widget SingleChildScrollView , Column , dan Row jadi lebih simple.
ListView mengikuti arah ScrollDirectionnya defaultnya vertical jadi ke bawah dan ubah jadi horizontal jika ingin ke samping.
Jika ScrollDirectionnya jadi vertical yang bisa diubah hanya ukuran height/tingginya sedangkan jika ScrollDirectionnya jadi horizontal yang bisa diubah hanya ukuran width/lebarnya
```dart
ListView(
          scrollDirection: Axis.vertical, // ubah jadi horizontal kalo pengen tampilannya jadi kanan kiri
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.greenAccent,
              child: const Center(
                child: Text("Kotak 1"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text("Kotak 2"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: const Center(
                child: Text("Kotak 3"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.greenAccent,
              child: const Center(
                child: Text("Kotak 1"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text("Kotak 2"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: const Center(
                child: Text("Kotak 3"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.greenAccent,
              child: const Center(
                child: Text("Kotak 1"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text("Kotak 2"),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
              child: const Center(
                child: Text("Kotak 3"),
              ),
            ),
          ],
        ),
```
Hasilnya :
<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/listview.gif"/>

## Stateless vs Stateful
Stateless -> tampilannya satic tidak ada perubahan data pada screen/layar

Sebagai contoh disini saya sudah membuat sebuah aplikasi increment dan decrement pada suatu data.

Berikut kode untuk versi menggunakan Stateless

```dart
import "package:flutter/material.dart";

void main() {
  runApp(stateless());
}

// stateless -> tampilannya satic tidak ada perubahan data pada screen/layar
// stateful -> tampilannya dynamic/berubah-ubah -> terjadi perubahan pada screen/layar

class stateless extends StatelessWidget {
  stateless({super.key});

  int nilai = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increment and Decrement Apps"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      nilai--;
                      print(nilai);
                    },
                    child: Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      nilai++;
                      print(nilai);
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

Hasilnya ketika saya coba untuk klik tombol tambah ataupun kurang tidak terjadi apapun pada tampilan aplikasi, angkanya tetap 0 .

<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/stateless.gif"/>

Bagaimana cara agar data atau angka 0 bisa berubah? nah disini kita perlu menambahkan sebuah fungsi namanya setState, tapi fungsi setState tidak bisa digunakan pada Stateless. Oleh karena itu kita harus menggunakan Stateful agar fungsi setState bisa digunakan.

Stateful -> tampilannya dynamic/berubah-ubah -> terjadi perubahan pada screen/layar

Berikut kode untuk versi menggunakan Stateful

```dart
import "package:flutter/material.dart";

void main() {
  runApp(stateful());
}

// stateless -> tampilannya satic tidak ada perubahan data pada screen/layar
// stateful -> tampilannya dynamic/berubah-ubah -> terjadi perubahan pada screen/layar

class stateful extends StatefulWidget {
  stateful({super.key});

  @override
  State<stateful> createState() => _statefulState();
}

class _statefulState extends State<stateful> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Increment and Decrement Apps"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$nilai",
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      nilai--;
                      print(nilai);
                      setState(
                          () {}); //fungsi untuk merefres tampilan jika ada perubahan
                    },
                    child: Icon(Icons.remove),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      nilai++;
                      print(nilai);
                      setState(
                          () {}); //fungsi untuk merefres tampilan jika ada perubahan
                    },
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

Berikut Hasilnya :

<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/stateful.gif"/>

## Dialog

Jadi dialog itu intinya bikin dialog atau semacam pop up atau alert

ada beberapa cara untuk bikin dialog,

cara pertama :

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
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

//pisahin materialapp dengan scaffold jika terjadi eror dengan cara mengextract widget scaffold
class homePage extends StatelessWidget {
  const homePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => Dialog(
                //cara pertama yaitu pake widget dialog doang
                child: Image.asset("assets/gambar1.png"),
              ),
            );
          },
          child: Text("Tampilkan Dialog"),
        ),
      ),
    );
  }
}
```

Hasilnya :

<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/dialog1.gif"/>

cara kedua :

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
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

//pisahin materialapp dengan scaffold jika terjadi eror dengan cara mengextract widget scaffold
class homePage extends StatelessWidget {
  const homePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dialog"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                // cara kedua pakai alertdialog
                shape: RoundedRectangleBorder(
                  // bikin border radius alias melengkung
                  borderRadius: BorderRadius.circular(15),
                ),
                title: Text("Judul Dialog"),
                content: Text("Ini adalah deskripsi dialog"),
                actions: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                    child: Text("Batal"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("OKE"),
                  )
                ],
              ),
            );
          },
          child: Text("Tampilkan Dialog"),
        ),
      ),
    );
  }
}
```

Hasilnya :

<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/dialog2.gif"/>

## SnackBar

Bikin Notif di bawah aplikasi

```dart
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SnackBar"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                //jadi snackbar itu sebuah notif yang bakalan muncul di bawah aplikasi
                SnackBar(
                  content: Text(
                    "Hapus Produk Berhasil!",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  action: SnackBarAction(
                    label: "Cancel",
                    onPressed: () {
                      print("Tidak Jadi Hapus Data");
                    },
                    textColor: Colors.red,
                  ),
                  backgroundColor: Colors.green,
                  duration: Duration(
                    seconds: 2,
                  ),
                  //kita bisa menggunakan margin tapi behaviornya harus diganti menjadi floating
                  margin: EdgeInsets.all(20),
                  behavior: SnackBarBehavior.floating,
                  //shape buat bikin border radius atau melengkung kalo ga mau kotak
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              );
            },
            child: Text("Hapus Produk")),
      ),
    );
  }
}
```

Hasilnya :

<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/snackbar.gif"/>

## TextField

Tempat untuk user menginput teks

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
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  bool isHidden = true;
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Text Field"),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              controller: emailC,
              autocorrect:
                  false, // jadiin true kalo pengen tulisannya dikoreksi otomatis saat typo
              keyboardType:
                  TextInputType.emailAddress, // buat ubah tipe keyboard
              textInputAction:
                  TextInputAction.next, // biar pas dienter lanjut ke password
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  // buat atur padding inputannya , hapus aja contentPadding kalo mau default
                  horizontal: 30,
                  vertical: 20,
                ),
                label: Text("Email"),
                //atau jika inputannya string bisa lgsg pake labeltext
                //labelText: "Email",
                border: OutlineInputBorder(
                  // buat ngasih border atau bikin jadi kotak
                  borderRadius: BorderRadius.circular(
                      50), // buat bikin kotaknya jadi melengkung , hapus atau kosongin aja OutlineInputBorder kalo ga pengen melengkung
                ),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: passC,
              autocorrect:
                  false, // jadiin true kalo pengen tulisannya dikoreksi otomatis saat typo
              keyboardType: TextInputType.text, // buat ubah tipe keyboard
              obscureText:
                  isHidden, // jadiin true buat bikin inputan menjadi bintang
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  // buat atur padding inputannya , hapus aja contentPadding kalo mau default
                  horizontal: 30,
                  vertical: 20,
                ),
                label: Text("Password"),
                //atau jika inputannya string bisa lgsg pake labeltext
                //labelText: "Email",
                border: OutlineInputBorder(
                  // buat ngasih border atau bikin jadi kotak
                  borderRadius: BorderRadius.circular(
                      50), // buat bikin kotaknya jadi melengkung , hapus atau kosongin aja OutlineInputBorder kalo ga pengen melengkung
                ),
                prefixIcon: Icon(Icons.key),
                suffixIcon: IconButton(
                  onPressed: () {
                    if (isHidden == true) {
                      isHidden = false;
                    } else {
                      isHidden = true;
                    }
                    setState(() {});
                  },
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                print(
                    "Berhasil Login dengan Email (${emailC.text}) dan Password (${passC.text})");
              },
              child: Text("LOGIN"),
              style: ElevatedButton.styleFrom(
                primary: Colors.red, // atur warna
                padding: EdgeInsets.symmetric(
                  // buat atur padding inputannya , hapus aja padding kalo mau default
                  horizontal: 30,
                  vertical: 20,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            )
          ],
        ));
  }
}
```

Hasilnya :

<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/textfield.gif"/>

## TextField

Membuat tab yang ada dibawah appbar

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
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("WhatsApp"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
            )
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                //bungkus tab biar otomatis rapih
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "Chat",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Panggilan",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: Text(
                "Kamera",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Center(
              child: Text(
                "Chat",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Center(
              child: Text(
                "Status",
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
            Center(
              child: Text(
                "Panggilan",
                style: TextStyle(
                  fontSize: 50,
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

Hasilnya :

<img src="https://github.com/Jauhariq/Mobile-programming/raw/materi/assets/tabbar.gif"/>
