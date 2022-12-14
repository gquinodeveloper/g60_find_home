import 'package:g60_find_home/app/data/models/request/request_reservation_model.dart';
import 'package:g60_find_home/app/data/providers/reservation_provider.dart';
import 'package:get/get.dart';

class ReservationRepository {
  final _apiProvider = Get.find<ReservationProvider>();

  Future<String> saveReservation({
    required String token,
    required RequestReservationModel requestReservation,
  }) =>
      _apiProvider.saveReservation(
        token: token,
        requestReservation: requestReservation,
      );
}
