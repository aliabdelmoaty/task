import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/home/view/custom_elevated_botton.dart';

class RowButtons extends StatefulWidget {
  const RowButtons({
    super.key,
  });

  @override
  State<RowButtons> createState() => _RowButtonsState();
}

class _RowButtonsState extends State<RowButtons> {
  String selectedChoice = 'Categories';
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.r),
          side: const BorderSide(
            color: Color(0xffF2F2F2),
          )),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 9.h),
        child: SizedBox(
          width: ScreenUtil().screenWidth - (15.w + 20.w),
          child: Row(
            children: [
              Expanded(
                child: FittedBox(
                  child: CustomElevatedButton(
                    // width: 96.w,
                    text: 'Categories',
                    onPressed: () {
                      setState(() {
                        selectedChoice = 'Categories';
                      });
                    },
                    backgroundColor: selectedChoice == 'Categories'
                        ? const Color(0xffD61116)
                        : const Color(0xffF2F2F2),
                    textColor: selectedChoice == 'Categories'
                        ? const Color(0xffF2F2F2)
                        : const Color(0xff101010),
                  ),
                ),
              ),
              SizedBox(
                width: 6.h,
              ),
              Expanded(
                child: FittedBox(
                  child: CustomElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedChoice = 'Services';
                      });
                    },
                    backgroundColor: selectedChoice == 'Services'
                        ? const Color(0xffD61116)
                        : const Color(0xffF2F2F2),
                    textColor: selectedChoice == 'Services'
                        ? const Color(0xffF2F2F2)
                        : const Color(0xff101010),
                    text: 'Services',
                  ),
                ),
              ),
              SizedBox(
                width: 6.h,
              ),
              Expanded(
                child: FittedBox(
                  child: CustomElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedChoice = 'Orders';
                        print(selectedChoice);
                      });
                    },
                    backgroundColor: selectedChoice == 'Orders'
                        ? const Color(0xffD61116)
                        : const Color(0xffF2F2F2),
                    textColor: selectedChoice == 'Orders'
                        ? const Color(0xffF2F2F2)
                        : const Color(0xff101010),
                    text: 'Orders (0)',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
