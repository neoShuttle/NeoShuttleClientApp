import 'package:flutter/material.dart';
import 'package:neoshuttle/screens/home_screen.dart';
import 'package:neoshuttle/screens/on_boarding.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Neo Shuttle',
        theme: ThemeData(
            brightness: Brightness.dark,
            useMaterial3: true,
            fontFamily: 'SpaceGrotesk',
            textTheme: const TextTheme(
                displayLarge:
                    TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
                titleLarge:
                    TextStyle(fontSize: 72, fontWeight: FontWeight.bold))),
        home: const OnBoardingScreen());
  }
}
