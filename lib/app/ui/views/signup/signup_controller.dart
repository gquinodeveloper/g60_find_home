import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:g60_find_home/app/data/models/request/request_customer_model.dart';
import 'package:g60_find_home/app/data/repositories/customer_repository.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  @override
  void onInit() {
    _initialized();
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Intances
  final _customerRepository = Get.find<CustomerRepository>();

  //Variables
  String _email = "";
  String _password = "";
  RxBool isObscureText = RxBool(true);

  //TextEditingController
  TextEditingController crtlTextName = TextEditingController();
  TextEditingController crtlTextLastName = TextEditingController();
  TextEditingController crtlTextAddress = TextEditingController();
  TextEditingController crtlTextEmail = TextEditingController();
  TextEditingController crtlTextPassword = TextEditingController();

  //Functions
  _initialized() {}

  void signupCustomer() async {
    try {
      final response = await _customerRepository.postSignup(
        RequestCustomerModel(
          name: crtlTextName.text,
          lastname: crtlTextLastName.text,
          adress: crtlTextAddress.text,
          email: crtlTextEmail.text,
          password: crtlTextPassword.text,
        ),
      );
      if (response.isNotEmpty) {
        clearText();
        Get.snackbar(
          "Success",
          response,
          colorText: Colors.white,
          backgroundColor: Colors.green,
          duration: const Duration(seconds: 5),
          snackPosition: SnackPosition.BOTTOM,
        );
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

  void clearText() {
    crtlTextName.clear();
    crtlTextLastName.clear();
    crtlTextAddress.clear();
    crtlTextEmail.clear();
    crtlTextPassword.clear();
  }

  void goToLogin() {
    Get.back();
  }
}
