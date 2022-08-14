import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meal_mon/Screens/mainScreen.dart';

import '../Components/Styles/Colors.dart';
import '../Data/routesName.dart';
import '../Utils/hlperRouting.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splash(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          color: white,
          child: Image.asset(
            "assets/images/splash.png",
            fit: BoxFit.fill,
            width: double.infinity,
            scale: ScreenUtil().scaleHeight,
          )),
    );
  }
}

splash(context) {
  Timer(const Duration(seconds: 3),
      () => RoutingUtil.pushReplacement(Routes.onBoardingScreen)
      //Navigator.pushReplacementNamed(context, Routes.onBoardingScreen)
      );
}
