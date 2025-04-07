import 'package:flutter/material.dart';
import '../../../core/routes/app_router.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/utils/page_transitions.dart';
import '../../../features/portfolio/screens/portfolio_screen.dart';

class SplashController {
  // Navigate to the portfolio screen after a delay
  Future<void> navigateToPortfolio(BuildContext context) async {
    // Delay to show the splash animation
    await Future.delayed(Duration(milliseconds: AppConstants.splashDuration));

    // Check if the context is still valid before navigating
    if (context.mounted) {
      // Use a custom page route with fade transition
      Navigator.of(context).pushReplacement(
        CustomPageRoute(
          page: const PortfolioScreen(),
          transitionType: PageTransitionType.fade,
          duration: const Duration(milliseconds: 800),
        ),
      );
    }
  }
}
