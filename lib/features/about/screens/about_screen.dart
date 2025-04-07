import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'About Me',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ...AppConstants.aboutMeParagraphs.map(
            (paragraph) => Column(
              children: [
                Text(paragraph, style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
