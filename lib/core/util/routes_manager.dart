import 'package:flutter/material.dart';
import 'package:store/core/util/langauge_manager.dart';
import 'package:store/features/products/presentation/pages/porducts_by_category.dart';
import 'package:store/features/products/presentation/pages/product_details/product_details_view.dart';
import 'package:store/features/products/presentation/pages/products_view.dart';
import 'package:store/presentation/home/view/settings/settings_view.dart';
import '../../features/authentication/presentation/pages/login_view.dart';
import '../../presentation/home/view/home_view.dart';
import '../../presentation/splash/splash_view.dart';
import 'string_manager.dart';

class Routes {
  static const String splashRoute = "/";
  static const String homeRoute = "/home";
  static const String loginRoute = "/login";
  static const String allProductsRoute = "/allProduct";
  static const String productDetailsRoute = "/productDetails";
  static const String productsByCategoryRoute = "/productsByCategoryRoute";
  static const String settingsView = "/settingsView";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
        case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>   const LoginPage());
        case Routes.allProductsRoute:
        return MaterialPageRoute(builder: (_) =>   const ProductView());
        case Routes.productDetailsRoute:
        return MaterialPageRoute(builder: (_) =>   const ProductDetailsView(),);
        case Routes.settingsView:
        return MaterialPageRoute(builder: (_) =>   const SettingsView(),);
        case Routes.productsByCategoryRoute:
        return MaterialPageRoute(builder: (_) {
          final categoryName = settings.arguments as String?;
          return    ProductsByCategory(categoryName: categoryName);});
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
