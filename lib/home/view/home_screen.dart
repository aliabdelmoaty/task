import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/home/view/home_screen_body.dart';

import '../../constants/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.white),
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
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        selectedItemColor: const Color(0xffD61116),
        unselectedItemColor: const Color(0xffC4C4C4),
        selectedLabelStyle: textStyleOutfit.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xffD61116)),
        unselectedLabelStyle: textStyleOutfit.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xffC4C4C4)),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard_customize_outlined), label: 'Assets'),
          BottomNavigationBarItem(
              icon: Icon(Icons.support_agent_rounded), label: 'Support'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Profile'),
        ]);
  }
}
