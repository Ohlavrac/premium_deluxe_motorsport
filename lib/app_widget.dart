import 'package:flutter/material.dart';
import 'package:premium_deluxe_motorsport/presentations/providers/vehicle_provider.dart';
import 'package:premium_deluxe_motorsport/presentations/screens/home_screen.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => VehicleProvider())
      ],
      child: MaterialApp(
        initialRoute: "/home",
        routes: {
          "/home": (context) => const HomeScreen(),
        },
      ),
    );
  }
}