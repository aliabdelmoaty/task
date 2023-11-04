import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:task/constants/constants.dart';
import 'package:task/home/data/cubit/user_cubit.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: BlocConsumer<UserCubit, UserState>(listener: (context, state) {
          if (state is GetUserError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.e),
              ),
            );
          }
        }, builder: (context, state) {
          if (state is GetUserSuccess) {
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
                SizedBox(
                  height: 600.h,
                  child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: UserCubit.get(context).userModel!.length,
                    itemBuilder: (context, index) => ItemCardCategory(
                        name: UserCubit.get(context).userModel![index].name!,
                        idUser: UserCubit.get(context)
                            .userModel![index]
                            .id
                            .toString()),
                  ),
                )
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }));
  }
}

class ItemCardCategory extends StatelessWidget {
  final String name;
  final String idUser;

  const ItemCardCategory({
    super.key,
    required this.name,
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
            Text(
              '$idUser.',
              style: textStyleOutfit.copyWith(
                  fontSize: 16.sp, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              width: 12.w,
            ),
            Text(
              name,
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
