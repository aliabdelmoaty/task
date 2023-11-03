import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/home/data/cubit/user_cubit.dart';
import 'package:task/home/view/home_screen.dart';

// ignore: depend_on_referenced_packages

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          SystemChrome.setSystemUIOverlayStyle(
              const SystemUiOverlayStyle(statusBarColor: Colors.white));
          return BlocProvider(
            create: (context) => UserCubit(),
            child: MaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor: Colors.white,
              ),
              debugShowCheckedModeBanner: false,
              home: const HomeScreen(),
            ),
          );
        });
  }
}
