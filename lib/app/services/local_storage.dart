import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:g60_find_home/app/data/models/response/response_auth_model.dart';
import 'package:g60_find_home/core/utils/keys.dart';
import 'package:get/get.dart';

class LocalStorage {
  final _storage = Get.find<FlutterSecureStorage>();

  Future<void> setAuth(ResponseAuthModel authModel) async {
    await _storage.write(
      key: Keys.KEYAUTH,
      value: jsonEncode(authModel.toJson()),
    );
  }

  Future<ResponseAuthModel> getAuth() async {
    String value = await _storage.read(key: Keys.KEYAUTH) ?? "";
    return ResponseAuthModel.fromJson(jsonDecode(value));
  }
}
