import 'package:flutter/material.dart';
import 'package:g60_find_home/app/data/models/request/request_reservation_model.dart';
import 'package:g60_find_home/app/data/models/response/response_auth_model.dart';
import 'package:g60_find_home/app/data/models/response/response_house_model.dart';
import 'package:g60_find_home/app/data/repositories/reservation_repository.dart';
import 'package:g60_find_home/app/services/local_storage.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  @override
  void onInit() {
    print("DetailController");
    _initialized();
    super.onInit();
  }

  @override
  void onReady() {
    print("Termine de dibujar los widgets");
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  //Intances
  final _localStorage = Get.find<LocalStorage>();
  final _reservationRepository = Get.find<ReservationRepository>();
  ResponseHouseModel responseHouseModel = ResponseHouseModel();
  ResponseAuthModel _responseAuthModel = ResponseAuthModel();
  //Variables
  String date = "";

  //Functions
  onChangeDate(String value) => date = value;

  _initialized() async {
    responseHouseModel = Get.arguments as ResponseHouseModel;
    _responseAuthModel = await _localStorage.getAuth();
  }

  saveReservation() async {
    try {
      final response = await _reservationRepository.saveReservation(
        token: _responseAuthModel.requestToken,
        requestReservation: RequestReservationModel(
          idUser: "${_responseAuthModel.idUser}",
          idHouse: "${responseHouseModel.idHouse}",
          date: date,
          price: "${responseHouseModel.price}",
        ),
      );

      Get.back();
      Get.snackbar(
        "Success",
        response,
        colorText: Colors.white,
        backgroundColor: Colors.cyan,
        duration: const Duration(seconds: 5),
        snackPosition: SnackPosition.BOTTOM,
      );

      print("Response: $response");
    } catch (e) {}
  }
}
