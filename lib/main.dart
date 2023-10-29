import 'package:flutter/material.dart';
import 'package:penisure/pages/NotFound.dart';
import 'package:penisure/pages/facts.dart';
import 'package:penisure/pages/home.dart';
import 'package:penisure/pages/location.dart';
import 'package:penisure/pages/notification.dart';
import 'package:penisure/pages/splashscreen.dart';
import 'package:penisure/pages/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Penisure',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        '/home': (context) => const HomeScreen(),
        '/test-center': (context) => TestScreen(),
        '/location': (context) => const LocationPage(),
        '/facts-screen': (context) => const FaQPage(),
        '/notification': (context) => const NotificationScreen(),
        '/404':(context) => const NotFoundPage()
      }
    );
  }
}
