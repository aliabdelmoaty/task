import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:task/constants/constants.dart';
import 'package:task/home/data/cubit/user_cubit.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
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
                      onPressed: () {
                        UserCubit.get(context).getUserData();
                      },
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
              // ItemCardCategory(
              //   text: 'Constructions', idUser: UserCubit.get(context).userModel!.id.toString(),
              // ),
              // SizedBox(
              //   height: 16.h,
              // ),
              // const ItemCardCategory(
              //   assetName: Assets.imagesInsurances,
              //   text: 'Insurances',
              // ),
              // SizedBox(
              //   height: 16.h,
              // ),
              // const ItemCardCategory(
              //   assetName: Assets.imagesLegal,
              //   text: 'Legal',
              // ),
              // SizedBox(
              //   height: 16.h,
              // ),
              // const ItemCardCategory(
              //   assetName: Assets.imagesServices,
              //   text: 'Buy & Sell',
              // ),
              // SizedBox(
              //   height: 16.h,
              // ),
              // const ItemCardCategory(
              //   assetName: Assets.imagesAccountingServices,
              //   text: 'Accounting Services',
              // )
            ],
          );
        },
      ),
    );
  }
}

class ItemCardCategory extends StatelessWidget {
  final String text;
  final String idUser;

  const ItemCardCategory({
    super.key,
    required this.text,
    required this.idUser,
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
            Text(idUser),
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
