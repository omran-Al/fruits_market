import 'package:flutter/material.dart';
import 'package:fruits_market/features/presentation/splash/splah_view.dart';

class StartApps extends StatelessWidget {
  const StartApps({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashViewScreen(),
    );
  }
}
