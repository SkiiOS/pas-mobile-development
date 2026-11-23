import 'package:pas_flutter/models/order_model.dart';
import 'package:pas_flutter/models/makanan_model.dart';
import 'package:pas_flutter/routes.dart';
import 'package:get/get.dart';

class CheckoutController extends GetxController {
  double diskonPersen = 0.10;
  double ppnPersen = 0.05;

  late MakananModel product;
  late int quantity;

  @override
  void onInit() {
    super.onInit();
    final data = Get.arguments;
    product = data["product"];
    quantity = data["quantity"];
  }

  double get subtotal {
    return product.hargaMakanan * quantity;
  }

  double hitungDiskon(double subtotal) {
    return (subtotal * diskonPersen).roundToDouble();
  }

  double hitungDpp(double subtotal) {
    return subtotal - hitungDiskon(subtotal);
  }

  double hitungPpn(double subtotal) {
    return (hitungDpp(subtotal) * ppnPersen).roundToDouble();
  }

  double hitungTotal(double subtotal) {
    return hitungDpp(subtotal) + hitungPpn(subtotal);
  }

  double get diskon => hitungDiskon(subtotal);
  double get dpp => hitungDpp(subtotal);
  double get ppn => hitungPpn(subtotal);
  double get total => hitungTotal(subtotal);

  void bayar() {
    OrderModel order = OrderModel(
      product: product,
      quantity: quantity,
      subtotal: subtotal,
      diskon: diskon,
      dpp: dpp,
      ppn: ppn,
      total: total,
      status: "Pesanan Berhasil",
    );

    Get.offNamed(Routes.konfirmasi_page, arguments: order);
  }
}
