import 'package:flutter/material.dart';
import 'package:food_delivery_app/screens/splash/splash.dart';

void main() => runApp(OnBoardingPage());

class OnBoardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
