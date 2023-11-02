import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/home/view/home_screen_body.dart';

import '../../constants/constans.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              onPressed: () {},
              icon: Icon(
                Icons.menu_rounded,
                color: const Color(0xff101010),
                size: 24.w,
              )),
          const Spacer(),
          Center(child: Text('Home', style: textStyleOutfit)),
          const Spacer(),
        ],
      ),
      body: const HomeScreenBody(),
      
    );
  }
}
