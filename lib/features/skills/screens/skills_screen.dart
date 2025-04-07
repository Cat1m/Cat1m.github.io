import 'package:flutter/material.dart';
import '../models/skill_model.dart';
import '../widgets/skill_progress_bar.dart';

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = Skill.skillsList;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Skills',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          ...skills.map((skill) => SkillProgressBar(skill: skill)),
        ],
      ),
    );
  }
}
