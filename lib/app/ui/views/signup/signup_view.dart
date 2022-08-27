import 'package:flutter/material.dart';
import 'package:g60_find_home/app/ui/views/signup/signup_controller.dart';
import 'package:g60_find_home/app/ui/views/signup/widgets/content.dart';
import 'package:g60_find_home/app/ui/views/signup/widgets/header.dart';
import 'package:g60_find_home/core/theme/app_colors.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cyan,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Header(),
            Content(),
            //Header(),
            //(),
          ],
        ),
      ),
    );
  }
}
