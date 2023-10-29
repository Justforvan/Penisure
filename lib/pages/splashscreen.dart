import 'package:flutter/material.dart';
import 'package:penisure/components/bottom_navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNavigation(),
        ),
      );
    });
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset('assets/splashscreen penisure-02.png', width: 300, height: 300,),
        ),
      ),
    ));
  }
}