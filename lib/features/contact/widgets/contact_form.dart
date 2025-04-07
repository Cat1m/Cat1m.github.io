import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';
import '../controllers/contact_controller.dart';

class ContactForm extends StatefulWidget {
  final ContactController controller;

  const ContactForm({Key? key, required this.controller}) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.controller.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: widget.controller.nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppConstants.nameRequired;
              }
              return null;
            },
          ),
          const SizedBox(height: 15),

          TextFormField(
            controller: widget.controller.emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppConstants.emailRequired;
              }
              if (!value.contains('@') || !value.contains('.')) {
                return AppConstants.emailInvalid;
              }
              return null;
            },
          ),
          const SizedBox(height: 15),

          TextFormField(
            controller: widget.controller.messageController,
            decoration: const InputDecoration(
              labelText: 'Message',
              border: OutlineInputBorder(),
              alignLabelWithHint: true,
            ),
            maxLines: 5,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppConstants.messageRequired;
              }
              return null;
            },
          ),
          const SizedBox(height: 20),

          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : ElevatedButton(
                onPressed: () async {
                  if (widget.controller.formKey.currentState!.validate()) {
                    setState(() {
                      _isLoading = true;
                    });

                    // Send the message
                    final success = await widget.controller.sendMessage();

                    setState(() {
                      _isLoading = false;
                    });

                    if (success && mounted) {
                      // Show success message
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text(AppConstants.messageSent)),
                      );

                      // Clear the form
                      widget.controller.clearForm();
                    }
                  }
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
                child: const Text('Send Message'),
              ),
        ],
      ),
    );
  }
}
