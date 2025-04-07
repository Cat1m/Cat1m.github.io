import 'package:flutter/material.dart';

class AppConstants {
  // Splash Screen
  static const int splashDuration = 2500; // milliseconds
  static const String logoInitial = "C"; // Initial letter for the logo

  // Personal Information
  static const String name = 'CAT1M';
  static const String title = 'Flutter Developer | Mobile Expert';
  static const String profileImagePath = 'assets/images/profile.jpg';

  // Contact Information
  static const String email = 'chien120697@gmail.com';
  static const String github = 'github.com/Cat1m';
  static const String linkedin = 'https://www.linkedin.com/in/cat1m/';

  // URLs
  static const String githubUrl = 'https://github.com/Cat1m';
  static const String linkedinUrl = 'https://www.linkedin.com/in/cat1m/';
  static const String emailUrl = 'mailto:chien120697@gmail.com';

  // Navigation Sections
  static const List<String> sections = [
    'Home',
    'About',
    'Projects',
    'Skills',
    'Contact',
  ];

  // Icons cho các sections
  static const List<IconData> sectionIcons = [
    Icons.home, // Home icon
    Icons.person, // About icon
    Icons.work, // Projects icon
    Icons.code, // Skills icon
    Icons.email, // Contact icon
  ];

  // About Me Content
  static const List<String> aboutMeParagraphs = [
    'Hello! I\'m a passionate Flutter developer with experience in building cross-platform mobile applications. '
        'I specialize in creating beautiful, responsive, and user-friendly interfaces that provide great user experiences.',

    'My journey in mobile development started with Android, but I quickly fell in love with Flutter for its '
        'performance, beautiful UI capabilities, and the ability to target multiple platforms from a single codebase.',

    'When I\'m not coding, you can find me exploring new technologies, contributing to open-source projects, '
        'or enjoying outdoor activities.',
  ];

  // Contact Form Validation Errors
  static const String nameRequired = 'Please enter your name';
  static const String emailRequired = 'Please enter your email';
  static const String emailInvalid = 'Please enter a valid email';
  static const String messageRequired = 'Please enter your message';
  static const String messageSent = 'Message sent! (This is a demo)';
}
