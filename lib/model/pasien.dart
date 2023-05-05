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
