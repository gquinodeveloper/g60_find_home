import 'package:dio/dio.dart';
import 'package:g60_find_home/app/data/models/response/response_house_model.dart';

class HouseProvider {
  final _dio = Dio();

  Future<List<ResponseHouseModel>> getAllHouses({
    required String token,
    required String page,
  }) async {
    final response = await _dio.get(
      "api/house/houses/$page/6",
      options: Options(
        headers: {
          "auth": token,
        },
      ),
    );
    print(response.data);
    return (response.data["result"] as List)
        .map((json) => ResponseHouseModel.fromJson(json))
        .toList();
  }
}
