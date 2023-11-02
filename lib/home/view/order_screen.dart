import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/constants/assets.dart';
import 'package:task/constants/constants.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          Assets.imagesEmptyState,
          height: 200.h,
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          'No orders found',
          style: textStyleOutfit.copyWith(
              fontSize: 22.sp,
              fontWeight: FontWeight.w700,
              color: const Color(0xff2E2E2E)),
        ),
        Text(
          'you can place your needed orders to let serve you.',
          style: textStyleOutfit.copyWith(
              fontSize: 20.0.sp,
              fontWeight: FontWeight.w300,
              color: const Color(0xff707070)),
        )
      ],
    );
  }
}
