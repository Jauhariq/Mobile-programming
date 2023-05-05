# Memisahkan Class Item dan Membuat Form Tambah

<img src="https://i.ibb.co/gzXFmzb/1.png"/>

ya langsung ajalah 

## lib/main.dart

```dart
import 'package:flutter/material.dart';
import 'ui/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Klinik APP',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
```
## lib/model/database.dart

```dart
List<Map> pegawai = [
  {
    'id': 1,
    'nip': '112233',
    'nama': 'Jauhari Afif',
    'tanggal_lahir': '30 februari 2001',
    'nomor_telepon': '083877698966',
    'email': 'contact@jauhariq.my.id',
    'password': '123',
  },
  {
    'id': 2,
    'nip': '6576455',
    'nama': 'Udin Sedunia',
    'tanggal_lahir': '9 Juli 1977',
    'nomor_telepon': '081122334455',
    'email': 'Udin@gmail.com',
    'password': '123',
  },
  {
    'id': 3,
    'nip': '668687',
    'nama': 'Cahyono',
    'tanggal_lahir': '9 Agustus 1979',
    'nomor_telepon': '08566778899',
    'email': 'cahyono@gmail.com',
    'password': '123',
  },
];

List<Map> pasien = [
  {
    'id': 1,
    'nomor_rm': '11873',
    'nama': 'Weggy Dhany Miharja',
    'tanggal_lahir': '10 Oktober 1997',
    'nomor_telepon': '082211456755',
    'alamat': 'Bekasi',
  },
  {
    'id': 2,
    'nomor_rm': '7678',
    'nama': 'Muhammad Rizki',
    'tanggal_lahir': '20 Juni 2000',
    'nomor_telepon': '083344556676',
    'alamat': 'Jakarta Pusat',
  },
  {
    'id': 3,
    'nomor_rm': '67678',
    'nama': 'Noval Meliakhi',
    'tanggal_lahir': '11 Februari 1999',
    'nomor_telepon': '082336789345',
    'alamat': 'Bogor',
  },
  {
    'id': 4,
    'nomor_rm': '67678',
    'nama': 'Fada Nazarullah',
    'tanggal_lahir': '5 Januari 1998',
    'nomor_telepon': '0822334589075',
    'alamat': 'Medan',
  },
];
```

## lib/model/pasien.dart

```dart
class Pasien {
  late int id;
  late String nama;
  late String nomor_rm;
  late String tanggal_lahir;
  late String nomor_telepon;
  late String alamat;

  Pasien(Map pasien) {
    id = pasien['id'];
    nama = pasien['nama'];
    nomor_rm = pasien['nomor_rm'];
    tanggal_lahir = pasien['tanggal_lahir'];
    nomor_telepon = pasien['nomor_telepon'];
    alamat = pasien['alamat'];
  }
}
```

## lib/model/pegawai.dart

```dart
class Pegawai {
  late int id;
  late String nip;
  late String nama;
  late String tanggal_lahir;
  late String nomor_telepon;
  late String email;
  late String password;

  Pegawai(Map pegawai) {
    id = pegawai['id'];
    nip = pegawai['nip'];
    nama = pegawai['nama'];
    tanggal_lahir = pegawai['tanggal_lahir'];
    nomor_telepon = pegawai['nomor_telepon'];
    email = pegawai['email'];
    password = pegawai['password'];
  }
}
```

## lib/model/poli.dart

```dart
class Poli {
  String? id;
  String namaPoli;

  Poli({this.id, required this.namaPoli});
}
```

## lib/ui/home.dart

```dart
import 'package:flutter/material.dart';
import 'poli_page.dart';
import 'pegawai_page.dart';
import 'pasien_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli"),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PoliPage()));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pegawai"),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PegawaiPage()));
            },
          ),
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Pasien"),
              ),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PasienPage()));
            },
          ),
        ],
      ),
    );
  }
}
```

## lib/ui/pasien_detail.dart

```dart
import 'package:flutter/material.dart';
import '../model/pasien.dart';
import '../model/database.dart';

class PasienDetail extends StatefulWidget {
  final Pasien pasien;

  const PasienDetail({super.key, required this.pasien});

  @override
  State<PasienDetail> createState() => _PasienDetailState();
}

class _PasienDetailState extends State<PasienDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail Pasien")),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(textAlign: TextAlign.left, 'Nama'),
                      Text(textAlign: TextAlign.left, 'No Rekam Medis'),
                      Text(textAlign: TextAlign.left, 'Tanggal Lahir'),
                      Text(textAlign: TextAlign.left, 'Nomor Telepon'),
                      Text(textAlign: TextAlign.left, 'Alamat')
                    ]),
                Column(children: const [
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : ')
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.pasien.nama}"),
                    Text("${widget.pasien.nomor_rm}"),
                    Text("${widget.pasien.tanggal_lahir}"),
                    Text("${widget.pasien.nomor_telepon}"),
                    Text("${widget.pasien.alamat}"),
                  ],
                )
              ],
            ),

            // Text(
            //   "Nama Pasien : ${widget.pasien.nama}",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   "Nomor Rekam Medis: ${widget.pasien.noRm}",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   "Nama Pasien : ${widget.pasien.nama}",
            //   style: TextStyle(fontSize: 20),
            // ),
            // Text(
            //   "Nama Pasien : ${widget.pasien.nama}",
            //   style: TextStyle(fontSize: 20),
            // ),

            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text("Ubah")),
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text("Hapus")),
              ],
            )
          ],
        ));
  }
}
```

## lib/ui/pasien_page.dart

```dart
import 'package:flutter/material.dart';
import '../model/database.dart';
import '../model/pasien.dart';
import 'pasien_detail.dart';

class PasienPage extends StatefulWidget {
  const PasienPage({super.key});

  @override
  State<PasienPage> createState() => _PasienPageState();
}

class _PasienPageState extends State<PasienPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pasien")),
      body: ListView(
        children: <Widget>[
          for (Map i in pasien)
            GestureDetector(
              child: Card(
                child: ListTile(title: Text(i['nama'])),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PasienDetail(pasien: new Pasien(i))));
              },
            )
        ],
      ),
    );
  }
}
```

## lib/ui/pegawai_detail.dart

```dart
import 'package:flutter/material.dart';
import '../model/pegawai.dart';
import '../model/database.dart';

class PegawaiDetail extends StatefulWidget {
  final Pegawai pegawai;

  const PegawaiDetail({super.key, required this.pegawai});

  @override
  State<PegawaiDetail> createState() => _PegawaiDetailState();
}

class _PegawaiDetailState extends State<PegawaiDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Detail Pegawai")),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 50),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(textAlign: TextAlign.left, 'Nama'),
                      Text(textAlign: TextAlign.left, 'NIP'),
                      Text(textAlign: TextAlign.left, 'Email'),
                      Text(textAlign: TextAlign.left, 'Tanggal Lahir'),
                      Text(textAlign: TextAlign.left, 'Nomor Telepon')
                    ]),
                Column(children: const [
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : '),
                  Text(' : ')
                ]),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${widget.pegawai.nama}"),
                    Text("${widget.pegawai.nip}"),
                    Text("${widget.pegawai.email}"),
                    Text("${widget.pegawai.tanggal_lahir}"),
                    Text("${widget.pegawai.nomor_telepon}")
                  ],
                )
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    child: const Text("Ubah")),
                ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    child: const Text("Hapus")),
              ],
            )
          ],
        ));
  }
}
```

## lib/ui/pegawai_page.dart

```dart
import 'package:flutter/material.dart';
import '../model/database.dart';
import '../model/pegawai.dart';
import 'pegawai_detail.dart';

class PegawaiPage extends StatefulWidget {
  const PegawaiPage({super.key});

  @override
  State<PegawaiPage> createState() => _PegawaiPageState();
}

class _PegawaiPageState extends State<PegawaiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pegawai")),
      body: ListView(
        children: <Widget>[
          for (Map i in pegawai)
            GestureDetector(
              child: Card(
                child: ListTile(title: Text(i['nama'])),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            PegawaiDetail(pegawai: new Pegawai(i))));
              },
            )
        ],
      ),
    );
  }
}
```

## lib/ui/poli_detail.dart

```dart
import 'package:flutter/material.dart';
import '../model/poli.dart';

class PoliDetail extends StatefulWidget {
  final Poli poli;

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Poli")),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "Nama Poli : ${widget.poli.namaPoli}",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {},
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text("Ubah")),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text("Hapus")),
            ],
          )
        ],
      ),
    );
  }
}
```

## lib/ui/poli_page.dart

```dart
import 'package:flutter/material.dart';
import '../model/poli.dart';
import 'poli_detail.dart';

class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Poli")),
      body: ListView(
        children: [
          GestureDetector(
            child: Card(
              child: ListTile(
                title: const Text("Poli Anak"),
              ),
            ),
            onTap: () {
              Poli poliAnak = new Poli(namaPoli: "Poli Anak");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PoliDetail(poli: poliAnak)));
            },
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Kandungan"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli Gigi"),
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Poli THT"),
            ),
          )
        ],
      ),
    );
  }
}
```


Hasilnya :

<img src="https://i.ibb.co/518VvJt/2.png"/>
<img src="https://i.ibb.co/gd4hgj3/3.png"/>
<img src="https://i.ibb.co/4R3BXhb/4.png"/>
<img src="https://i.ibb.co/cDYS8yy/5.png"/>
<img src="https://i.ibb.co/ScJYN5z/6.png"/>
