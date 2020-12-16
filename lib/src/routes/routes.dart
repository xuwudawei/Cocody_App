import 'package:cocody/src/widgets/user/Homepages/main.dart';
import 'package:cocody/src/widgets/user/landingPage/landingPage.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LandingPage());
      case '/login/home':
        return MaterialPageRoute(builder: (_) => HomePage());
    }
  }
}
