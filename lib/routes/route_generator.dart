import 'package:flutter/material.dart';
import 'package:navigation_and_routing/screens/first_page.dart';
import 'package:navigation_and_routing/screens/home_page.dart';
import 'package:navigation_and_routing/screens/second_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Generate arguments passed in while calling Navigator.pushed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
        );

      case '/first':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => FirstPage(data: args),
          );
        }

        return _errorRoute();
      case '/second':
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => SecondPage(data: args),
          );
        }

        return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }
}
