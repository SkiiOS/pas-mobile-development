import 'package:pas_flutter/models/order_model.dart';
import 'package:get/get.dart';

class OrderConfirmController extends GetxController {
  late OrderModel order;

  @override
  void onInit() {
    super.onInit();
    order = Get.arguments;
  }
}

