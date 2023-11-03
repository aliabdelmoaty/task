import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/constants/assets.dart';
import 'package:task/constants/constants.dart';
import 'package:task/home/view/custom_elevated_botton.dart';

class OnBorder extends StatefulWidget {
  const OnBorder({
    super.key,
  });
  @override
  State<OnBorder> createState() => _OnBorderState();
}

class _OnBorderState extends State<OnBorder> {
  late PageController? controller;
  double currentPageValue = 0;
  @override
  void initState() {
    controller = PageController();
    controller?.addListener(() {
      setState(() => currentPageValue = controller?.page ?? 0);
    });
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  int itemCount = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 152.h,
          child: PageView.builder(
              controller: controller,
              physics: const BouncingScrollPhysics(),
              itemCount: itemCount,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.all(8.r),
                  height: 152.h,
                  decoration: BoxDecoration(
                      color: const Color(0xffFFF5F5),
                      borderRadius: BorderRadius.all(Radius.circular(8.r))),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Multi-Services for Your Real Estate Needs',
                              style: textStyleOutfit.copyWith(fontSize: 16.sp),
                            ),
                            SizedBox(
                              height: 16.h,
                            ),
                            CustomElevatedButton(
                              height: 32.h,
                              width: 142.w,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w500,
                              text: 'Order',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Image.asset(
                        Assets.imagesManPresentationMiniatureBuilding,
                        height: 142.h,
                        // color:
                        width: 142.w,
                      )
                    ],
                  ),
                );
              }),
        ),
        SizedBox(height: 10.h),
        SmoothPageIndicator(
          controller: controller!,
          count: itemCount,
          effect: ExpandingDotsEffect(
              radius: 360,
              spacing: 4.w,
              activeDotColor: const Color(0xffD61116),
              dotColor: const Color(0xffE0E0E0)),
        ),
      ],
    );
  }
}
