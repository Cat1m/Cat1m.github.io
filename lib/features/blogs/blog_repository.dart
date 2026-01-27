import 'package:injectable/injectable.dart';
import 'package:my_portfolio/features/blogs/model/blog_item.dart';

abstract class IBlogRepository {
  Future<List<BlogItem>> getBlogs();
}

@LazySingleton(as: IBlogRepository)
class BlogRepository implements IBlogRepository {
  @override
  Future<List<BlogItem>> getBlogs() async {
    await Future.delayed(const Duration(milliseconds: 500));

    return [
      // Bài 1: The Confession (Mới thêm)
      BlogItem(
        id: '1',
        title: 'The Confession: Stop Using StatefulWidget for Everything',
        description:
            'I’ll confess: Way too many times I typed "stful" just to call an API. I’m giving you a mindset shift and fundamental principles that work regardless of your state management solution.',
        link:
            'https://medium.com/@chien120697/my-confession-about-statefulwidget-and-the-mindset-that-changed-how-i-build-flutter-apps-f5b3dd1818d9',
        coverUrl: 'assets/blogs/confession_cover.png',
        publishedDate: DateTime(2025, 10, 1), // Giả định bài mới nhất
        readTime: '8 min read',
        tags: ['Architecture', 'Flutter', 'Best Practices'],
      ),

      // Bài 2: 5 State Management Patterns
      BlogItem(
        id: '2',
        title:
            '5 State Management Patterns That Actually Scale (Not Just BLoC vs Riverpod)',
        description:
            'Stop watching YouTube videos about "which state management is best". Start understanding what type of state you’re actually managing. Learn about Ephemeral, App-Wide, Business Logic, and Persistent state.',
        link:
            'https://medium.com/@chien120697/5-state-management-patterns-that-actually-scale-not-just-bloc-vs-riverpod-5806d364102c',
        coverUrl: 'assets/blogs/state_management_cover.png',
        publishedDate: DateTime(2025, 9, 8),
        readTime: '12 min read',
        tags: ['State Management', 'Architecture', 'Flutter'],
      ),

      // Bài 3: Slivers vs ListView
      BlogItem(
        id: '3',
        title:
            'Flutter Slivers: Why Your ListView is Holding You Back (And How to Fix It)',
        description:
            'The problem? We’re still thinking in ListView when the modern world demands Slivers. Learn how to build buttery-smooth scrolling experiences with CustomScrollView and Slivers.',
        link:
            'https://medium.com/@chien120697/flutter-slivers-why-your-listview-is-holding-you-back-and-how-to-fix-it-08099298a862',
        coverUrl: 'assets/blogs/slivers_cover.png',
        publishedDate: DateTime(2025, 8, 30),
        readTime: '15 min read',
        tags: ['Slivers', 'Performance', 'UI/UX'],
      ),

      // Bài 4: 7 Flutter Patterns
      BlogItem(
        id: '4',
        title:
            '7 Flutter Patterns That Actually Save You from Pain (Not Just a Few Lines of Code)',
        description:
            'I’m giving you 7 patterns that have actually saved me from production bugs. From Debouncing done right to Retry logic in Repositories and generic AutoDispose mixins.',
        link:
            'https://medium.com/@chien120697/7-flutter-patterns-that-actually-save-you-from-pain-not-just-a-few-lines-of-code-8825effdd66b',
        coverUrl: 'assets/blogs/patterns_cover.png',
        publishedDate: DateTime(2025, 8, 29),
        readTime: '12 min read',
        tags: ['Clean Code', 'Best Practices', 'Production'],
      ),

      // Bài 5: Sealed Classes
      BlogItem(
        id: '5',
        title:
            'Sealed Classes: The Flutter Feature You’ve Been Ignoring in Your Auto-Generated Bloc Code',
        description:
            'Sealed classes aren’t just syntax sugar. They’re a paradigm shift. Discover why the Bloc team made them default and how they enforce type safety at compile time.',
        link:
            'https://medium.com/@chien120697/7-flutter-patterns-that-actually-save-you-from-pain-not-just-a-few-lines-of-code-8825effdd66b',
        coverUrl: 'assets/blogs/sealed_class_cover.png',
        publishedDate: DateTime(2025, 7, 17),
        readTime: '6 min read',
        tags: ['Dart 3', 'Sealed Class', 'Bloc'],
      ),
    ];
  }
}
