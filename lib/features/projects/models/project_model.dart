class Project {
  final String title;
  final String description;
  final String imageUrl;
  final String projectUrl;

  const Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.projectUrl,
  });

  // Mock data for projects
  static List<Project> get mockProjects {
    return List.generate(
      5,
      (index) => Project(
        title: 'Project ${index + 1}',
        description:
            'This is a sample project description. It showcases my skills in Flutter development.',
        imageUrl: 'assets/project${index + 1}.jpg',
        projectUrl: 'https://github.com/Cat1m/project${index + 1}',
      ),
    );
  }
}
