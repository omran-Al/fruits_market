import 'package:flutter/material.dart';
import 'package:fruits_market/features/auth/presentation/page/login/widgets/custom_login_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomBodyLogIn(),
    );
  }
}
