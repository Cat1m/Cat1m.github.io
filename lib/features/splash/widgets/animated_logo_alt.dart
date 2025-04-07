import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';

class AnimatedLogoAlt extends StatefulWidget {
  const AnimatedLogoAlt({Key? key}) : super(key: key);

  @override
  State<AnimatedLogoAlt> createState() => _AnimatedLogoAltState();
}

class _AnimatedLogoAltState extends State<AnimatedLogoAlt>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _lineAnimation;
  late Animation<double> _textOpacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );

    _lineAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.easeInOut),
      ),
    );

    _textOpacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.7, 1.0, curve: Curves.easeIn),
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Animated line above the text
            Container(
              width: 50 * _lineAnimation.value,
              height: 3,
              color: Theme.of(context).primaryColor,
              margin: const EdgeInsets.only(bottom: 20),
            ),

            // Fade-in text
            Opacity(
              opacity: _textOpacityAnimation.value,
              child: Column(
                children: [
                  Text(
                    AppConstants.name,
                    style: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 8,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    AppConstants.title.toUpperCase(),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 3,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),

            // Animated line below the text
            Container(
              width: 50 * _lineAnimation.value,
              height: 3,
              color: Theme.of(context).primaryColor,
              margin: const EdgeInsets.only(top: 20),
            ),
          ],
        );
      },
    );
  }
}
