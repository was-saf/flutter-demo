import 'package:flutter/material.dart';
import 'package:student/data/notifiers.dart';
import 'package:student/views/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isDarkModeNotifier,
      builder: (context, isDarkMode, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.lightGreenAccent,
              brightness: isDarkMode ? Brightness.dark : Brightness.light,
            ),
          ),
          home: WelcomePage(),
        );
      },
    );
  }
}
