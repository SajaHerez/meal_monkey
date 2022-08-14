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
import 'Utils/hlperRouting.dart';

class GenerateRoutes {
  static Route<dynamic>? onGenerateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case Routes.mainScreen:
        return MaterialPageRoute(
          builder: (context) => const MainScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (context) => const SignUpScreen(),
        );
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoarding(),
        );
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const ResetPass(),
        );
      case Routes.oTPScreen:
        return MaterialPageRoute(
          builder: (context) => const OTPScreen(),
        );
      case Routes.newPassScreen:
        return MaterialPageRoute(
          builder: (context) => const NewPassScreen(),
        );
    
      default:
        return RoutingUtil.errorRoute();
    }
  }
}





//  final Map<String, Widget Function(BuildContext context)> routesMap = {
//   Routes.splashScreen: (context) => const SplashScreen(),
//   Routes.mainScreen: (context) => const MainScreen(),
//   Routes.loginScreen: (context) => const LoginScreen(),
//   Routes.signUpScreen: (context) => const SignUpScreen(),
//   Routes.onBoardingScreen: (context) => const OnBoarding(),
//   Routes.resetPasswordScreen: (context) => const ResetPass(),
//   Routes.oTPScreen: (context) => const OTPScreen(),
//   Routes.newPassScreen: (context) => const NewPassScreen(),
//   Routes.NamedPage:(context) => const NamedPage(),
// };