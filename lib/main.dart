import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task/constants/bloc_observer.dart';
import 'package:task/home/data/cubit/user_cubit.dart';
import 'package:task/home/view/home_screen.dart';

// ignore: depend_on_referenced_packages

void main() async {
  Bloc.observer = MyBlocObserver();
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
          return BlocProvider(
              create: (_) => UserCubit()..getUserData(),
              child: MaterialApp(
                theme: ThemeData(
                  scaffoldBackgroundColor: Colors.white,
                ),
                debugShowCheckedModeBanner: false,
                home: const HomeScreen(),
              ));
        });
  }
}
