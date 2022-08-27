import 'package:flutter/material.dart';
import 'package:g60_find_home/app/ui/views/home/home_controller.dart';
import 'package:g60_find_home/app/ui/views/home/widgets/category.dart';
import 'package:g60_find_home/app/ui/views/home/widgets/content_title.dart';
import 'package:g60_find_home/app/ui/views/home/widgets/header.dart';
import 'package:g60_find_home/app/ui/views/home/widgets/houses.dart';
import 'package:g60_find_home/app/ui/views/home/widgets/search.dart';
import 'package:g60_find_home/core/theme/app_colors.dart';
import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Positioned.fill(
              child: CustomScrollView(
                slivers: [
                  Header(),
                  Search(),
                  Category(),
                  const ContentTitle(),
                  Houses(),
                ],
              ),
            ),
            //ButtonNavigator()
          ],
        ),
      ),
    );
  }
}
