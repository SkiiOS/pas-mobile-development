
import 'package:pas_flutter/components/custom_button2.dart';
import 'package:pas_flutter/components/summary_row.dart';
import 'package:pas_flutter/controller/order_confirm_controller.dart';
import 'package:pas_flutter/routes.dart';
import 'package:pas_flutter/utils/format_rupiah.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KonfirmasiPage extends StatelessWidget {
  KonfirmasiPage({super.key});

  final controller = Get.put(OrderConfirmController());

  @override
  Widget build(BuildContext context) {
    final order = controller.order;
    return Scaffold(
      appBar: AppBar(title: Text("Konfirmasi Pesanan"), automaticallyImplyLeading: false),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Icon(Icons.check_circle, size: 70, color: Colors.green),
          SizedBox(height: 8),
          Center(
            child: Text(
              order.status,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(height: 32),
          Text("Produk yang dibeli", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          SummaryRow(
            label: "${order.product.namaMakanan} x${order.quantity}",
            value: formatRupiah(order.subtotal),
          ),
          Divider(height: 32),
          SummaryRow(label: "Subtotal", value: formatRupiah(order.subtotal)),
          SummaryRow(label: "Diskon", value: formatRupiah(-order.diskon)),
          SummaryRow(label: "DPP", value: formatRupiah(order.dpp)),
          SummaryRow(label: "PPN", value: formatRupiah(order.ppn)),
          Divider(height: 32),
          SummaryRow(label: "Total Pembayaran", value: formatRupiah(order.total), bold: true),
        ],
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: SizedBox(
            width: double.infinity,
            child: CustomButton2(
              myText: "Kembali ke Katalog",
              myColor: Color(0xFFEE6C2B),
              onPressed: () => Get.offAllNamed(Routes.list_makanan),
            ),
          ),
        ),
      ),
    );
  }
}

