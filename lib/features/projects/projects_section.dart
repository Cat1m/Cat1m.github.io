import 'package:flutter/material.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';

class ProjectsSection extends StatelessWidget {
  final List<ProjectItem> projects;

  const ProjectsSection({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      color: Colors.grey[100],
      alignment: Alignment.center,
      child: Text("PROJECTS SECTION (${projects.length} Items)"),
    );
  }
}
