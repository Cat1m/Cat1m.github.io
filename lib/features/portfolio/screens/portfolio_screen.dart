import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';
import '../widgets/portfolio_layout.dart';
import '../controllers/portfolio_controller.dart';
import '../../home/screens/home_screen.dart';
import '../../about/screens/about_screen.dart';
import '../../projects/screens/projects_screen.dart';
import '../../skills/screens/skills_screen.dart';
import '../../contact/screens/contact_screen.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final PortfolioController _controller = PortfolioController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PortfolioLayout(
      currentIndex: _controller.currentIndex,
      onDestinationSelected: (index) {
        setState(() {
          _controller.currentIndex = index;
        });
      },
      sections: AppConstants.sections,
      children: const [
        HomeScreen(),
        AboutScreen(),
        ProjectsScreen(),
        SkillsScreen(),
        ContactScreen(),
      ],
    );
  }
}
