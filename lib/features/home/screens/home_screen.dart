import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';
import '../widgets/social_buttons.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(AppConstants.profileImagePath),
          ),
          const SizedBox(height: 20),
          const Text(
            AppConstants.name,
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            AppConstants.title,
            style: TextStyle(fontSize: 20, color: Colors.grey),
          ),
          const SizedBox(height: 30),
          const SocialButtons(),
        ],
      ),
    );
  }
}
