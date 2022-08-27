import 'package:g60_find_home/core/environment/env.dart';

class AppConfig {
  static void initialize() {
    Environment.type = ENV.QA;
  }

  static const itemsBottonNavigation = [
    'assets/icons/find_home.svg',
    'assets/icons/heart.svg',
    'assets/icons/location.svg',
    'assets/icons/message.svg',
  ];
}
