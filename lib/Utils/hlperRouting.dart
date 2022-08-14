import 'package:flutter/material.dart';

class RoutingUtil {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>(debugLabel: "saja");

  static push(String route, {Object? arguments}) {
    navigatorKey.currentState!.pushNamed(route, arguments: arguments);
  }

  static pop() {
    navigatorKey.currentState!.pop();
  }

  static pushReplacement(String route, {Object? arguments}) {
    navigatorKey.currentState!
        .pushReplacementNamed(route, arguments: arguments);
  }

  static Route<dynamic> errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(),
        body: const Center(
          child: Text("Error")
          ),
      );
    });
  }
}
