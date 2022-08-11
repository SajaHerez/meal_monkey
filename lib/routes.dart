import 'package:flutter/material.dart';
import 'Data/routesName.dart';
import 'Screens/LoginScreen.dart';
import 'Screens/NewPassScreen.dart';
import 'Screens/OTPScreen.dart';
import 'Screens/Onboarding.dart';
import 'Screens/ResetPassword.dart';
import 'Screens/SignUpScreen.dart';
import 'Screens/mainScreen.dart';
import 'Screens/splashscreen.dart';


final Map<String,Widget Function(BuildContext context)> routesMap = {
  Routes.splashScreen: (context) => const SplashScreen(),
   Routes.mainScreen: (context) => const MainScreen(),
  Routes.loginScreen: (context) => const LoginScreen(),
  Routes.signUpScreen: (context) => const SignUpScreen(),
  Routes.onBoardingScreen: (context) => const OnBoarding(),
  Routes.resetPasswordScreen: (context) => const ResetPass(),
  Routes.oTPScreen: (context) => const OTPScreen(),
  Routes.newPassScreen: (context) => const NewPassScreen(),
};
