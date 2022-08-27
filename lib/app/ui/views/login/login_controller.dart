import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:g60_find_home/app/data/models/request/request_auth_model.dart';
import 'package:g60_find_home/app/data/repositories/customer_repository.dart';
import 'package:g60_find_home/app/routes/app_routes.dart';
import 'package:g60_find_home/app/services/local_storage.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //Intances
  final _customerRepository = Get.find<CustomerRepository>();
  final _localStorage = Get.find<LocalStorage>();

  //Variables
  String _email = "gqcrispin@gmail.com";
  String _password = "123456";
  RxBool isObscureText = RxBool(true);

  //Functions
  void onChangeEmail(String value) => _email = value;
  void onChangePassword(String value) => _password = value;
  void showPassword() {
    isObscureText.value = !isObscureText.value;
  }

  void goToRegister(){
    Get.toNamed(AppRoutes.SIGNUP);
  }

  void doAuth() async {
    try {
      final response = await _customerRepository.postAuth(
        RequestAuthModel(
          email: _email,
          password: _password,
        ),
      );

      if (response.requestToken.isNotEmpty) {
        await _localStorage.setAuth(response);
        Get.offNamed(AppRoutes.HOME);
      }
    } on DioError catch (err) {
      Get.snackbar(
        "${err.error} - ${err.response?.statusMessage}",
        err.response?.data["message"],
        colorText: Colors.white,
        backgroundColor: Colors.pink,
        duration: const Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
