import 'package:flutter/material.dart';
import 'package:task_news_app/features/home/presentation/views/home_screen.dart';

import '../../features/authentication/presentation/views/login/login_screen.dart';
import '../../features/authentication/presentation/views/register/register_screen.dart';
import 'routes.dart';

class AppRouter {
  Route<dynamic>? router(RouteSettings settings) {
    switch (settings.name) {
      case Routes.login:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
      case Routes.register:
        return MaterialPageRoute(builder: (_) =>  RegisterScreen());
           case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return null;
    }
  }
}
