import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/services/url_service.dart';
import '../controllers/contact_controller.dart';
import '../widgets/contact_form.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  final ContactController _controller = ContactController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Contact Me',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          const Text(
            'Feel free to reach out for collaborations or just a friendly hello!',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 30),

          ContactForm(controller: _controller),

          const SizedBox(height: 40),
          const Text(
            'Or reach me directly:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          ListTile(
            leading: const Icon(Icons.email),
            title: const Text('Email'),
            subtitle: Text(AppConstants.email),
            onTap: () => UrlService.launchEmail(AppConstants.email),
          ),
          ListTile(
            leading: const Icon(Icons.code),
            title: const Text('GitHub'),
            subtitle: Text(AppConstants.github),
            onTap: () => UrlService.launchUrl(AppConstants.githubUrl),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('LinkedIn'),
            subtitle: Text(AppConstants.linkedin),
            onTap: () => UrlService.launchUrl(AppConstants.linkedinUrl),
          ),
        ],
      ),
    );
  }
}
