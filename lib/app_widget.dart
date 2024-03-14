import 'package:flutter/material.dart';
import 'package:premium_deluxe_motorsport/presentations/screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/home",
      routes: {
        "/home": (context) => const HomeScreen(),
      },
    );
  }
}