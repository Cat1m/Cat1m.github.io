import 'package:flutter/material.dart';
import 'package:my_portfolio/features/portfolio/portfolio_models/portfolio_models.dart';

class PortfolioHeader extends StatelessWidget {
  final PortfolioSection activeSection;
  final Function(PortfolioSection) onMenuClick;

  const PortfolioHeader({
    super.key,
    required this.activeSection,
    required this.onMenuClick,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 32),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10),
        ],
      ),
      child: Row(
        children: [
          // Left: Logo/Name
          const Text(
            "MyPortfolio",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),

          const Spacer(),

          // Right: Menu Items (Desktop View)
          // TODO: Xử lý Responsive (ẩn menu hiện hamburger trên mobile) sau
          ...PortfolioSection.values.map((section) {
            final isActive = section == activeSection;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextButton(
                onPressed: () => onMenuClick(section),
                style: TextButton.styleFrom(
                  foregroundColor: isActive ? Colors.blue : Colors.grey,
                ),
                child: Text(
                  section.title,
                  style: TextStyle(
                    fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              ),
            );
          }),

          const SizedBox(width: 20),
          // CTA Button
          ElevatedButton(
            onPressed: () {}, // Download CV Action
            child: const Text("Resume"),
          ),
        ],
      ),
    );
  }
}
