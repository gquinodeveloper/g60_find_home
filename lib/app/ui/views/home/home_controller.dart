import 'package:g60_find_home/app/data/models/response/response_auth_model.dart';
import 'package:g60_find_home/app/data/models/response/response_customer_information_model.dart';
import 'package:g60_find_home/app/data/models/response/response_house_model.dart';
import 'package:g60_find_home/app/data/repositories/customer_repository.dart';
import 'package:g60_find_home/app/data/repositories/house_repository.dart';
import 'package:g60_find_home/app/services/local_storage.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
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
  final _localStorage = Get.find<LocalStorage>();
  final _customerRepository = Get.find<CustomerRepository>();
  final _houseRepository = Get.find<HouseRepository>();

  ResponseAuthModel _responseAuthModel = ResponseAuthModel();

  //Variables
  RxString name = RxString("");
  RxString address = RxString("");
  RxInt isSelectedIndex = RxInt(0);
  RxList<ResponseHouseModel> houses = RxList<ResponseHouseModel>([]);

  //Functions

  _initialized() async {
    _responseAuthModel = await _localStorage.getAuth();
    _loadInformation();
    _loadHouses();
  }

  selectedIndex(int index) {
    isSelectedIndex.value = index;
  }

  _loadInformation() async {
    try {
      final response = await _customerRepository.getInformation(
        token: _responseAuthModel.requestToken,
        idUser: _responseAuthModel.idUser,
      );

      name.value = "${response.name}";
      address.value = "${response.address}";
    } catch (e) {
      print("_loadInformation ---> $e");
    }
  }

  _loadHouses() async {
    try {
      houses.value = await _houseRepository.getAllHouses(
        token: _responseAuthModel.requestToken,
        page: "1",
      );
    } catch (e) {}
  }
}
