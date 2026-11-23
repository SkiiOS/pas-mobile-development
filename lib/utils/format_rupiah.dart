String formatRupiah(double angka) {
  String teks = angka.round().abs().toString(); // "32999000"

  String hasil = "";
  int hitung = 0;
  for (int i = teks.length - 1; i >= 0; i--) {
    hasil = "${teks[i]}$hasil";
    hitung++;
    if (hitung % 3 == 0 && i != 0) {
      hasil = ".$hasil";
    }
  }

  if (angka < 0) {
    return "-Rp$hasil";
  }
  return "Rp$hasil";
}

