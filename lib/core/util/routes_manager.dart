import 'package:flutter/material.dart';
import 'package:store/core/util/langauge_manager.dart';
import '../../presentation/home/view/home_view.dart';
import '../../presentation/splash/splash_view.dart';
import 'string_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: Text(
            AppStrings.strNoRouteFound.tr(context),
          ),
        ),
        body: Center(
          child: Text(
            AppStrings.strNoRouteFound.tr(context),
          ),
        ),
      ),
    );
  }
}
