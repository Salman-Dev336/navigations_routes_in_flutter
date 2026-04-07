import 'package:flutter/material.dart';
import 'package:routes/home_screen.dart';
import 'package:routes/screen_three.dart';
import 'package:routes/screen_two.dart';
import 'package:routes/utils/route_names.dart';
import 'package:routes/utils/route_names.dart' show RouteName;

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case RouteName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case RouteName.screenTwo:
        final args = settings.arguments as Map<String, dynamic>;

        return MaterialPageRoute(
          builder: (context) => ScreenTwo(
            name: args['name'],
            num: args['num'],
          ),
        );

      case RouteName.screenThree:
        return MaterialPageRoute(
          builder: (context) => const ScreenThree(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}