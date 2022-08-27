import 'package:g60_find_home/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    print("onInit Splash");
    super.onInit();
  }

  @override
  void onReady() {
    print("onReady Splash");
    Future.delayed(const Duration(milliseconds: 200), () {
      Get.offNamed(AppRoutes.LOGIN);
    });
    super.onReady();
  }

  @override
  void onClose() {
    print("onClose Splash");
    super.onClose();
  }
}
