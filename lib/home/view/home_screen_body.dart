import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/constants/assets.dart';
import 'package:task/constants/constans.dart';
import 'package:task/home/view/category_screen.dart';
import 'package:task/home/view/onBorder.dart';
import 'package:task/home/view/row_buttons.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(children: [
            Row(
              children: [
                Image.asset(
                  Assets.imagesImage1,
                  height: 28.h,
                  width: 28.w,
                ),
                Text(
                  'Hey, Ahmed',
                  style: textStyleOutfit.copyWith(fontSize: 16.sp),
                ),
                Image.asset(
                  Assets.imagesImage2,
                  height: 28.h,
                  width: 28.w,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Text(
              'Multi-Services for Your Real Estate Needs',
              style: textStyleOutfit.copyWith(fontSize: 18.sp),
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              'Explore diverse real estate services for all your needs: property management, construction, insurance and more in one place.',
              style: textStyleOutfit.copyWith(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                  color: const Color(0xff707070)),
            ),
            SizedBox(
              height: 16.h,
            ),
            const OnBorder(),
            SizedBox(
              height: 24.h,
            ),
            const RowButtons(),
            SizedBox(
              height: 16.h,
            ),
            const CategoryScreen(),
          ])),
    );
  }
}
