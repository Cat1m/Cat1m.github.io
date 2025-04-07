import 'package:flutter/material.dart';
import '../../../core/constants/app_constants.dart';

class PortfolioLayout extends StatelessWidget {
  final int currentIndex;
  final Function(int) onDestinationSelected;
  final List<String> sections;
  final List<Widget> children;

  const PortfolioLayout({
    super.key,
    required this.currentIndex,
    required this.onDestinationSelected,
    required this.sections,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar:
          isDesktop
              ? null
              : AppBar(title: const Text('Cat1m Portfolio'), elevation: 0),
      drawer:
          isDesktop
              ? null
              : Drawer(
                child: ListView(
                  children: [
                    const DrawerHeader(
                      decoration: BoxDecoration(color: Colors.blue),
                      child: Center(
                        child: Text(
                          AppConstants.name,
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                    for (int i = 0; i < sections.length; i++)
                      ListTile(
                        title: Text(sections[i]),
                        selected: currentIndex == i,
                        onTap: () {
                          onDestinationSelected(i);
                          Navigator.pop(context);
                        },
                      ),
                  ],
                ),
              ),
      body: Row(
        children: [
          if (isDesktop)
            NavigationRail(
              selectedIndex: currentIndex,
              onDestinationSelected: onDestinationSelected,
              labelType: NavigationRailLabelType.all,
              destinations: [
                for (final section in sections)
                  NavigationRailDestination(
                    icon: const Icon(Icons.circle),
                    label: Text(section),
                  ),
              ],
            ),
          Expanded(
            child: IndexedStack(index: currentIndex, children: children),
          ),
        ],
      ),
    );
  }
}
