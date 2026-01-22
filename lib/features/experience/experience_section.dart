import 'package:flutter/material.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';

class ExperienceSection extends StatelessWidget {
  final List<ExperienceItem> experiences;

  const ExperienceSection({super.key, required this.experiences});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.white,
      alignment: Alignment.center,
      child: const Text("WORK EXPERIENCE SECTION"),
    );
  }
}
