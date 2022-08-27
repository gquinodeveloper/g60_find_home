import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:g60_find_home/app/data/models/request/request_reservation_model.dart';

class ReservationProvider {
  final _dio = Dio();

  Future<String> saveReservation({
    required String token,
    required RequestReservationModel requestReservation,
  }) async {
    final response = await _dio.post(
      "api/reservation/register",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
      data: json.encode(requestReservation.toJson()),
    );
    print(response.data["message"]);
    return response.data["message"];
  }
}
