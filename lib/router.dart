import 'package:flutter/material.dart';
import 'package:sayohat/screens/home_screen.dart';
import 'city/andijon/andijon_screen.dart';
import 'city/buxoro/buxoro_screen.dart';

class OnGenerateRouter {
  Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return navigateTo(HomeScreen());
      case '/andijon':
        return navigateTo(const AndijonScreen());
      case '/buxoro':
        return navigateTo(const BuxoroScreen());
      default:
        return navigateTo(const Scaffold(
          body: Center(child: Text("Sahifa topilmadi"))
        ));
    }
  }

  navigateTo(Widget widget) {
    return MaterialPageRoute(builder: (ctx) => widget);
  }
}
