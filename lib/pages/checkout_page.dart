
import 'package:pas_flutter/components/custom_button2.dart';
import 'package:pas_flutter/components/summary_row.dart';
import 'package:pas_flutter/controller/checkout_controller.dart';
import 'package:pas_flutter/utils/format_rupiah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutPage extends StatelessWidget {
  CheckoutPage({super.key});

  final controller = Get.put(CheckoutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkout")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("Produk", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          SummaryRow(
            label: "${controller.product.namaMakanan} x${controller.quantity}",
            value: formatRupiah(controller.subtotal),
          ),
          Divider(height: 32),
          Text("Rincian Pembayaran", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          SummaryRow(label: "Subtotal", value: formatRupiah(controller.subtotal)),
          SummaryRow(
            label: "Diskon ${(controller.diskonPersen * 100).round()}%",
            value: formatRupiah(-controller.diskon),
          ),
          SummaryRow(label: "DPP", value: formatRupiah(controller.dpp)),
          SummaryRow(
            label: "PPN ${(controller.ppnPersen * 100).round()}%",
            value: formatRupiah(controller.ppn),
          ),
          Divider(height: 32),
          SummaryRow(
            label: "Total Pembayaran",
            value: formatRupiah(controller.total),
            bold: true,
          ),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity,
            // tombol Bayar
            child: CustomButton2(
              myText: "Bayar (Simulasi)",
              myColor: Color(0xFFEE6C2B),
              onPressed: () => controller.bayar(),
            ),
          ),
        ),
      ),
    );
  }
}

