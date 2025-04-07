import 'package:flutter/material.dart';
import '../controllers/splash_controller.dart';
import '../widgets/animated_logo.dart';
import '../widgets/animated_logo_alt.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final SplashController _controller = SplashController();

  @override
  void initState() {
    super.initState();
    // Navigate to portfolio screen after delay
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.navigateToPortfolio(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Theme.of(context).brightness == Brightness.dark
              ? Colors.black
              : Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Choose one of these animated logos (comment out the one you don't want)
            const AnimatedLogoAlt(), // Minimalist design
            // const AnimatedLogo(), // Original design

            // Loading indicator at the bottom
            const SizedBox(height: 80),
            SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).primaryColor.withOpacity(0.6),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
