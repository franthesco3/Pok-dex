import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 2), (timer) {
      nextPage();
      timer.cancel();
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset('assets/animations/splash_screen.json'),
      ),
    );
  }

  void nextPage() {
    Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic> route) => false);
  }
}
