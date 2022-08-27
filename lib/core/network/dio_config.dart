import 'package:dio/dio.dart';
import 'package:g60_find_home/core/environment/env.dart';
import 'package:g60_find_home/core/network/interceptors/logger_interceptor.dart';
import 'package:get/get.dart';

class DioConfig {
  static void initialize() {
    Get.lazyPut<Dio>(
      () => Dio(
        BaseOptions(
            baseUrl: Environment.appConfig["baseUrl"],
            connectTimeout: Environment.appConfig["connectTimeout"],
            responseType: ResponseType.json),
      )..interceptors.addAll([
          LoggerInterceptor(),
        ]),
      fenix: true,
    );
  }
}
