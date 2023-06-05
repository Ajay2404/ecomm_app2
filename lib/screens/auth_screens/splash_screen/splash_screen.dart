import 'dart:async';

import 'package:ecomm_app2/common/config.dart';
import 'package:ecomm_app2/screens/auth_screens/onboarding_screens/onboardscreen.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnBoardingScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Image.asset(imageAssets.p2,
            alignment: Alignment.center,
            height: double.infinity,
            fit: BoxFit.cover),
      ),
    );
  }
}
