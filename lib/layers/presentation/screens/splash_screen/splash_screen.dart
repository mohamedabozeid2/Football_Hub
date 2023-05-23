import 'dart:async';

import 'package:flutter/material.dart';
import 'package:touchline/core/utils/components.dart';
import 'package:touchline/layers/presentation/screens/home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(
        seconds: 1,
      ),
      () => Components.navigateAndFinish(
          context: context, widget: HomeScreen()),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("SPLASH")],
        ),
      ),
    );
  }
}
