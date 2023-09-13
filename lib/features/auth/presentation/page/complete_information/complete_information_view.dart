import 'package:flutter/material.dart';
import 'package:fruits_market/features/auth/presentation/page/complete_information/widgets/custom_body_info.dart';

class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CompleteInformationBody(),
    );
  }
}
