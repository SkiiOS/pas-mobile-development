import 'package:pas_flutter/pages/detail_makanan_page.dart';
import 'package:pas_flutter/pages/list_makanan_page.dart';
import 'package:pas_flutter/pages/main_menu_page3.dart';
import 'package:pas_flutter/pages/API HITS/login_page3.dart';
import 'package:pas_flutter/pages/checkout_page.dart';
import 'package:pas_flutter/pages/konfirmasi_page.dart';

import 'package:get/get.dart';

class Routes {

  static const String mainmenu = "/mainmenu";
  static const String list_makanan = "/list_makanan";
  static const String detail_makanan = "/detail_makanan";
  static const String main_menu_pages2 = "/main_menu_pages2";
  static const String main_menu_page3 = "/main_menu_page3";
   static const String login_page3 = "/login_page3";
  static const String checkout_page = "/checkout_page";
   static const String konfirmasi_page = "/konfirmasi_page";

  static final myPages = [
    GetPage(name: list_makanan, page: () => ListMakananPage()),
    GetPage(name: detail_makanan, page: () => DetailMakananPage()),
    GetPage(name: main_menu_page3, page: () => MainMenuPage3()),
    GetPage(name: login_page3, page: () => LoginPage3()),
    GetPage(name: konfirmasi_page, page: () => KonfirmasiPage()),
    GetPage(name: checkout_page, page: () => CheckoutPage()),
  ];
}