import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:g60_find_home/core/theme/app_colors.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: 20.w,
          vertical: 15.h
        ),
        child: Row(
          children: [
            Text(
              "Nearby to you",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColors.blueDark, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              "View more",
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                  color: AppColors.blueDark, fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 2.w),
            const Icon(Icons.arrow_forward_ios, color: AppColors.blueDark, size: 18.0,),
          ],
        ),
      ),
    );
  }
}
