import 'package:pas_flutter/models/makanan_model.dart';

class OrderModel {
  MakananModel product;
  int quantity;
  double subtotal;
  double diskon;
  double dpp;
  double ppn;
  double total;
  String status;

  OrderModel({
    required this.product,
    required this.quantity,
    required this.subtotal,
    required this.diskon,
    required this.dpp,
    required this.ppn,
    required this.total,
    required this.status,
  });
}
