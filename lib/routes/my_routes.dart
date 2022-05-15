import 'package:flutter/material.dart';
import 'package:rental_travel_app/views/details/view/details_page.dart';
import 'package:rental_travel_app/views/home/view/home_page.dart';
import 'package:rental_travel_app/views/home/view/my_home_page.dart';
import 'package:rental_travel_app/views/splash/view/splash_page.dart';

class MyRoute {
  Route? onGenerate(RouteSettings s) {
    var args = s.arguments;
    switch (s.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case '/my_home':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case '/home':
        return MaterialPageRoute(builder: (_) => const HomePage());
      case '/detalies':
        return MaterialPageRoute(builder: (_) => const DetailsPage());
    }
  }
}
