import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g60_find_home/app/routes/app_routes.dart';
import 'package:g60_find_home/app/routes/app_views.dart';
import 'package:g60_find_home/core/config/app_config.dart';
import 'package:g60_find_home/core/network/dio_config.dart';
import 'package:g60_find_home/core/utils/dependency_injection.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppConfig.initialize();
  DioConfig.initialize();
  DependencyInjection.load();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: AppRoutes.SPLASH,
          getPages: AppViews.views,
        );
      },
    );
  }
}
