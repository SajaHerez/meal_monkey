import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Screens/splashscreen.dart';

import 'Data/routesName.dart';
import 'Utils/hlperRouting.dart';
import 'routes.dart';

void main() {
  runApp(ScreenUtilInit(
      designSize: const Size(375, 811),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          onGenerateTitle: (context) => "Meal Monkey",
          navigatorKey: RoutingUtil.navigatorKey,
          onGenerateRoute: GenerateRoutes.onGenerateRoutes,
          //  routes:routesMap,
          initialRoute: Routes.splashScreen,
          // home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
        );
      }));
}
