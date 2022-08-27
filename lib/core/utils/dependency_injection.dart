import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:g60_find_home/app/data/providers/customer_provider.dart';
import 'package:g60_find_home/app/data/providers/house_provider.dart';
import 'package:g60_find_home/app/data/providers/reservation_provider.dart';
import 'package:g60_find_home/app/data/repositories/customer_repository.dart';
import 'package:g60_find_home/app/data/repositories/house_repository.dart';
import 'package:g60_find_home/app/data/repositories/reservation_repository.dart';
import 'package:g60_find_home/app/services/local_storage.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static load() {
    //Encargado de injectar la dependencia de mis clases

    //Providers
    Get.put<CustomerProvider>(CustomerProvider());
    Get.put<HouseProvider>(HouseProvider());
    Get.put<ReservationProvider>(ReservationProvider());

    //Repositories
    Get.put<CustomerRepository>(CustomerRepository());
    Get.put<HouseRepository>(HouseRepository());
    Get.put<ReservationRepository>(ReservationRepository());

    //Local
    Get.put<FlutterSecureStorage>(const FlutterSecureStorage());
    Get.put<LocalStorage>(LocalStorage());
  }
}
