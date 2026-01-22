import 'package:flutter/material.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';

class SkillsSection extends StatelessWidget {
  final List<SkillItem> skills;

  const SkillsSection({super.key, required this.skills});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: Colors.grey[100],
      alignment: Alignment.center,
      child: const Text("SKILLS SECTION"),
    );
  }
}
