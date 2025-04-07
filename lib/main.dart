import 'package:flutter/material.dart';
import 'core/routes/app_router.dart';
import 'core/themes/app_theme.dart';
import 'core/utils/page_transitions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat1m Portfolio',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: AppRouter.initialRoute,
      routes: AppRouter.routes,
      // Add custom page transitions for named routes
      onGenerateRoute: (settings) {
        // Get the route widget from our routes map
        final routeBuilder = AppRouter.routes[settings.name];
        if (routeBuilder != null) {
          // Check if we have transition info in the arguments
          final args = settings.arguments;
          if (args is Map && args.containsKey('transition')) {
            // Apply custom transition
            return CustomPageRoute(
              page: Builder(builder: (context) => routeBuilder(context)),
              transitionType: args['transition'],
              duration: args['duration'] ?? const Duration(milliseconds: 300),
            );
          }
        }
        // Default handling - if not handled above, use default route generation
        return null;
      },
    );
  }
}
