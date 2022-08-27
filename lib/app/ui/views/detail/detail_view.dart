import 'package:flutter/material.dart';
import 'package:g60_find_home/app/ui/views/detail/detail_controller.dart';
import 'package:g60_find_home/app/ui/views/detail/widgets/appbar_actions.dart';
import 'package:g60_find_home/app/ui/views/detail/widgets/content.dart';
import 'package:g60_find_home/app/ui/views/detail/widgets/footer.dart';
import 'package:g60_find_home/app/ui/views/detail/widgets/header.dart';
import 'package:get/get.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailController>(
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              Header(
                path: controller.responseHouseModel.photo ?? "",
              ),
              AppBarActions(aviable: controller.responseHouseModel.aviable ?? 0),
              Content(house: controller.responseHouseModel),
              Footer(house: controller.responseHouseModel),
            ],
          ),
        );
      },
    );
  }
}
