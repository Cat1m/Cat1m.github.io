import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/services/url_service.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.code),
          onPressed: () => UrlService.launchUrl(AppConstants.githubUrl),
          tooltip: 'GitHub',
        ),
        IconButton(
          icon: const Icon(Icons.person),
          onPressed: () => UrlService.launchUrl(AppConstants.linkedinUrl),
          tooltip: 'LinkedIn',
        ),
        IconButton(
          icon: const Icon(Icons.email),
          onPressed: () => UrlService.launchUrl(AppConstants.emailUrl),
          tooltip: 'Email',
        ),
      ],
    );
  }
}
