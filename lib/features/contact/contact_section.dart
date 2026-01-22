import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about/models/profile_info.dart';

class ContactSection extends StatelessWidget {
  final ProfileInfo profile;

  const ContactSection({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.blueGrey[900],
      alignment: Alignment.center,
      child: const Text("CONTACT ME", style: TextStyle(color: Colors.white)),
    );
  }
}
