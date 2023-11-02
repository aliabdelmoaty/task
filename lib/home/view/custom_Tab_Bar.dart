import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/constants/constants.dart';
import 'package:task/home/view/category_screen.dart';
import 'package:task/home/view/home_screen_body.dart';
import 'package:task/home/view/order_screen.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({
    Key? key,
  }) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  String selectedChoice = 'Categories';

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: selectedChoice == 'Categories'
          ? 470.h
          : selectedChoice == 'Service'
              ? 100.h
              : selectedChoice == 'Order'
                  ? 400.h
                  : null,
      child: Column(
        children: [
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.r),
                side: const BorderSide(
                  color: Color(0xffF2F2F2),
                )),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 9.h),
              child: TabBar(
                indicatorPadding: EdgeInsets.zero,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 0.1,
                indicatorColor: Colors.white,
                onTap: (value) {
                  if (value == 0) {
                    setState(() {
                      selectedChoice = 'Categories';
                    });
                  }
                  if (value == 1) {
                    setState(() {
                      selectedChoice = 'Service';
                    });
                  }
                  if (value == 2) {
                    setState(() {
                      selectedChoice = 'Order';
                    });
                  }
                },
                controller: _tabController,
                tabs: [
                  FittedBox(
                    child: ContainerTab(
                      selectedChoice: selectedChoice,
                      text: 'Categories',
                    ),
                  ),
                  ContainerTab(
                    selectedChoice: selectedChoice,
                    text: 'Service',
                  ),
                  ContainerTab(
                    selectedChoice: selectedChoice,
                    text: 'Order',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                SizedBox(height: 150.h, child: const CategoryScreen()),
                const Service(),
                const Order(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class ContainerTab extends StatelessWidget {
  const ContainerTab({
    super.key,
    required this.selectedChoice,
    required this.text,
  });

  final String selectedChoice;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: selectedChoice == text
              ? const Color(0xffD61116)
              : const Color(0xffF2F2F2),
          borderRadius: BorderRadius.all(Radius.circular(360.r))),
      child: Text(text,
          style: textStyleOutfit.copyWith(
            fontSize: 14.sp,
            color: selectedChoice == text
                ? const Color(0xffF2F2F2)
                : const Color(0xff101010),
          )),
    );
  }
}
