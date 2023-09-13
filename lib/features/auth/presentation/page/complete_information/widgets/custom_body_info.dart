import 'package:flutter/material.dart';
import 'package:fruits_market/core/widgets/custom_buttons.dart';
import 'package:fruits_market/core/widgets/spece_widget.dart';
import 'package:fruits_market/features/auth/presentation/page/complete_information/widgets/custom_info_items.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          VerticalSize(value: 1),
          CompleteInfoItem(
            text: 'Enter your name',
          ),
          VerticalSize(value: 2),
          CompleteInfoItem(
            text: 'Enter your phone number',
          ),
          VerticalSize(value: 2),
          CompleteInfoItem(
            maxLines: 5,
            text: 'Enter your address',
          ),
          VerticalSize(value: 5),
          GeneralButton(
            text: 'Login',
          ),
        ],
      ),
    );
  }
}
