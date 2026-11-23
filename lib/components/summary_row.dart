// lib/components/summary_row.dart
// widget bawaan Flutter
import 'package:flutter/material.dart';

// Satu baris rincian: "Diskon 10%  ...........  -Rp10.000"
class SummaryRow extends StatelessWidget {
  // teks di kiri
  final String label;
  // teks di kanan
  final String value;
  // true = huruf besar dan tebal (dipakai untuk total)
  final bool bold;

  // label dan value wajib; bold bawaannya false
  const SummaryRow({
    super.key,
    required this.label,
    required this.value,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    // gaya tulisan dipilih berdasarkan bold
    TextStyle gaya = TextStyle(
      // bold: ukuran 18, biasa: 15
      fontSize: bold ? 18 : 15,
      // bold: tebal, biasa: normal
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    );
    // jarak atas bawah antar baris
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      // susun mendatar
      child: Row(
        // dorong label ke kiri dan nilai ke kanan
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // tulisan kiri
          Text(label, style: gaya),
          // tulisan kanan
          Text(value, style: gaya),
        ],
      ),
    );
  }
}

// ============================================================
// KEGUNAAN FILE
// Satu baris rincian label dan nilai, bisa dicetak tebal untuk total.
//
// TERHUBUNG KE
// Dipakai oleh: pages/3_checkout_page.dart dan pages/4_konfirmasi_page.dart.
// ============================================================
