import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Screens/splashscreen.dart';

import 'routes.dart';


void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(375, 811),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return  MaterialApp(
          routes: routesMap ,
          //home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
        );
      }));
}
