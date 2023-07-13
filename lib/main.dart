import 'package:atomic_architecture_poc/core/theme/foundation.dart';
import 'package:atomic_architecture_poc/features/list/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: FoundationColors.appBarBackground, // Use the foundation color
        scaffoldBackgroundColor: FoundationColors.cardBackground, // Use the foundation color
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            color: FoundationColors.textPrimary, // Use the foundation color
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}