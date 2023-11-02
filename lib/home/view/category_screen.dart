import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/constants/assets.dart';
import 'package:task/constants/constans.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              'Categories View',
              style: textStyleOutfit.copyWith(
                  fontSize: 14.sp, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            TextButton(
                onPressed: () {},
                child: Text(
                  'see all',
                  style: textStyleOutfit.copyWith(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
                      color: const Color(0xff8C8C8C),
                      decoration: TextDecoration.underline,
                      decorationColor: const Color(0xff8C8C8C)),
                ))
          ],
        ),
        SizedBox(
          height: 16.h,
        ),
        const ItemCardCategory(
          assetName: Assets.imagesVector,
          text: 'Constructions',
        ),
        SizedBox(
          height: 16.h,
        ),
        const ItemCardCategory(
          assetName: Assets.imagesInsurances,
          text: 'Insurances',
        ),
        SizedBox(
          height: 16.h,
        ),
        const ItemCardCategory(
          assetName: Assets.imagesLegal,
          text: 'Legal',
        ),
        SizedBox(
          height: 16.h,
        ),
        const ItemCardCategory(
          assetName: Assets.imagesBuySell,
          text: 'Buy & Sell',
        ),
        SizedBox(
          height: 16.h,
        ),
        const ItemCardCategory(
          assetName: Assets.imagesAccounting,
          text: 'Accounting Services',
        )
      ],
    );
  }
}

class ItemCardCategory extends StatelessWidget {
  final String assetName;
  final String text;
  const ItemCardCategory({
    super.key,
    required this.assetName,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              assetName,
              height: 24.h,
              width: 24.w,
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              text,
              style: textStyleOutfit.copyWith(
                  fontSize: 16.sp, fontWeight: FontWeight.w400),
            ),
            const Spacer(),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_rounded,
                  color: Color(0xff8C8C8C),
                ))
          ],
        ),
      ),
    );
  }
}
