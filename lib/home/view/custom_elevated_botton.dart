import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/constants/constants.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? fontSize;
  final String text;
  final Color? backgroundColor;
  final Color? textColor;
  final FontWeight? fontWeight;
  final void Function()? onPressed;

  const CustomElevatedButton({
    super.key,
    this.height,
    this.width,
    this.fontSize,
    required this.text,
    this.backgroundColor,
    this.textColor,
    this.fontWeight,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
              (states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360.0.r),
              ),
            ),
            elevation:
                MaterialStateProperty.resolveWith<double>((states) => 0.0),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (states) => backgroundColor ?? const Color(0xffD61116),
            )),
        onPressed: onPressed,
        child: Text(
          text,
          maxLines: 1,
          style: textStyleOutfit.copyWith(
              fontSize: fontSize ?? 13.sp,
              fontWeight: fontWeight ?? FontWeight.w400,
              color: textColor ?? const Color(0xffFFFFFF)),
        ),
      ),
    );
  }
}
