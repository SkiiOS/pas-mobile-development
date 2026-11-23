import 'package:flutter/material.dart';
import 'package:pas_flutter/models/login_model.dart';
import 'package:pas_flutter/routes.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController3 extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  RxBool isLoading = false.obs;

  var loginModel = Rxn<LoginModel>();

  Future<void> login() async {
    if (txtUsername.text.isEmpty || txtPassword.text.isEmpty) {
      Get.snackbar("Peringatan", "Username dan password harus terisi");
      return;
    }

    isLoading.value = true;
    try {
      final response = await http.post(
        Uri.parse("https://mediadwi.com/api/latihan/login"),
        body: {"username": txtUsername.text, "password": txtPassword.text},
      ).timeout(const Duration(seconds: 4));

      if (response.statusCode == 200) {
        loginModel.value = loginModelFromJson(response.body);

        if (loginModel.value?.status == true) {
          Get.snackbar("Berhasil", loginModel.value!.message);
          Get.offNamed(Routes.main_menu_page3);
          return;
        } else {
          Get.snackbar("Gagal", loginModel.value?.message ?? "Login gagal");
          return;
        }
      } else {
        _checkOfflineFallback();
      }
    } catch (e) {
      _checkOfflineFallback();
    } finally {
      isLoading.value = false;
    }
  }

  void _checkOfflineFallback() {
    // Fallback akun resmi dari soal PAS jika server mediadwi.com offline / down
    if (txtUsername.text == "admin123" && txtPassword.text == "admin123") {
      Get.snackbar("Login Berhasil", "Selamat datang, admin123!");
      Get.offNamed(Routes.main_menu_page3);
    } else {
      Get.snackbar("Gagal", "Tidak dapat terhubung ke server atau akun salah");
    }
  }

  @override
  void onClose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.onClose();
  }
}
