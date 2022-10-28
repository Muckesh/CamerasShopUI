import 'package:camera_ecom_ui/screens/home_screen.dart';
import 'package:camera_ecom_ui/screens/on_boarding_screen.dart';

import 'package:flutter/material.dart';

class AppRouter {
  static Route OnGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case '/':
        return OnBoarding.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => const Center(
        child: Text("Error"),
      ),
    );
  }
}
