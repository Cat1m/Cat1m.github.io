class Skill {
  final String name;
  final double proficiency;

  const Skill({required this.name, required this.proficiency});

  // Mock data for skills
  static Map<String, double> get skillsMap {
    return {
      'Flutter': 0.9,
      'Dart': 0.85,
      'Firebase': 0.8,
      'RESTful APIs': 0.75,
      'State Management': 0.85,
      'UI/UX Design': 0.7,
      'Git & GitHub': 0.8,
      'Responsive Design': 0.85,
    };
  }

  static List<Skill> get skillsList {
    return skillsMap.entries
        .map((entry) => Skill(name: entry.key, proficiency: entry.value))
        .toList();
  }
}
