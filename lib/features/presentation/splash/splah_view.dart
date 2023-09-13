import 'package:flutter/material.dart';
import 'package:fruits_market/core/constants.dart';
import 'package:fruits_market/features/presentation/splash/widgets/splash_body.dart';

class SplashViewScreen extends StatelessWidget {
  const SplashViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainColor,
      body: SplashBody(),
    );
  }
}
