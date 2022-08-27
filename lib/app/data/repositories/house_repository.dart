import 'package:g60_find_home/app/data/models/response/response_house_model.dart';
import 'package:g60_find_home/app/data/providers/house_provider.dart';
import 'package:get/get.dart';

class HouseRepository {

  final _apiProvider = Get.find<HouseProvider>();

  Future<List<ResponseHouseModel>> getAllHouses({
    required String token,
    required String page,
  }) => _apiProvider.getAllHouses(token: token, page: page);
}