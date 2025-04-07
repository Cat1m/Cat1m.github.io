import 'package:flutter/material.dart';
import '../../features/portfolio/screens/portfolio_screen.dart';
import '../../features/splash/screens/splash_screen.dart';

class AppRouter {
  // Route names
  static const String initialRoute = '/';
  static const String portfolioRoute = '/portfolio';

  static final Map<String, WidgetBuilder> routes = {
    initialRoute: (context) => const SplashScreen(),
    portfolioRoute: (context) => const PortfolioScreen(),
  };
}
