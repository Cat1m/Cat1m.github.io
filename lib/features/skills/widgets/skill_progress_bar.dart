import 'package:flutter/material.dart';
import '../models/skill_model.dart';

class SkillProgressBar extends StatelessWidget {
  final Skill skill;

  const SkillProgressBar({super.key, required this.skill});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          skill.name,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        LinearProgressIndicator(
          value: skill.proficiency,
          minHeight: 10,
          backgroundColor: Colors.grey[300],
          borderRadius: BorderRadius.circular(5),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
