import 'package:g60_find_home/app/routes/app_routes.dart';
import 'package:g60_find_home/app/ui/views/detail/detail_binding.dart';
import 'package:g60_find_home/app/ui/views/detail/detail_view.dart';
import 'package:g60_find_home/app/ui/views/home/home_binding.dart';
import 'package:g60_find_home/app/ui/views/home/home_view.dart';
import 'package:g60_find_home/app/ui/views/login/login_binding.dart';
import 'package:g60_find_home/app/ui/views/login/login_view.dart';
import 'package:g60_find_home/app/ui/views/signup/signup_binding.dart';
import 'package:g60_find_home/app/ui/views/signup/signup_view.dart';
import 'package:g60_find_home/app/ui/views/splash/splash_binding.dart';
import 'package:g60_find_home/app/ui/views/splash/splash_view.dart';
import 'package:get/get.dart';

class AppViews {
  static final views = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: AppRoutes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      //transitionDuration: const Duration(seconds: 5),
      //transition: Transition.circularReveal,
    ),
    GetPage(
      name: AppRoutes.SIGNUP,
      page: () => const SignupView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: AppRoutes.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
  ];
}
