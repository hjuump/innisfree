import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/green_screen.dart';
import 'screens/live_screen.dart';
import 'screens/my_screen.dart';
import 'components/custom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Innisfree App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomeScreen(),
    );
  }
}
