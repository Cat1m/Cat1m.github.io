import 'package:flutter/material.dart';

class ContactController {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  // Simulate sending a message
  Future<bool> sendMessage() async {
    // In a real app, you would send the form data to a server here
    // For now, we'll just simulate a delay
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }

  void dispose() {
    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
  }

  void clearForm() {
    nameController.clear();
    emailController.clear();
    messageController.clear();
  }
}
